

CALLBACKS = ['third_party_request','payment_page','process_page','cancel_request_page']



def receiveRequest
	remoteIP=request.ip.strip
	reqURL=request.url
	pathInfo=request.path_info
	reqBody=request.body.read
	
	logIncomingRequest(remoteIP, reqURL, pathInfo, reqBody)

  # Pass on selected routes
	pass if ['payment_page'].include? request.path_info.split('/')[1]
	pass if ['process_page'].include? request.path_info.split('/')[1]
	pass if ['cancel_request_page'].include? request.path_info.split('/')[1]
  
	if CALLBACKS.include? request.path_info.split('/')[1]
	else
	  halt ERR_UNKNOWN_REQ.to_json 
	end


	req1=JSON.parse reqBody
	clientId=req1["client_id"]

	# Pull out the authorization header
	if env['HTTP_AUTHORIZATION'] && env['HTTP_AUTHORIZATION'].split(':').length == 2
		auth_header = env['HTTP_AUTHORIZATION'].split(':')
	else
		puts "No header information"
		halt ERR_NO_AUTH_HEADER.to_json
	end

	public_token  = auth_header[0]
	signature   = auth_header[1]


	puts
	puts public_token
	puts
	puts
	puts signature
	puts
  
  
	##_client=Client.select("server_ip").where(status: 1).joins(:api_key).select("api_keys.client_key").where(:api_keys=>{client_key: public_token})[0]
	_client=Client.select("server_ip").where("clients.id=? and clients.status=?", clientId.to_i, true).joins(:api_key).select("api_keys.client_key").where(:api_keys=>{client_key: public_token})[0]
  
	halt ERR_INVALID_TOKEN.to_json if _client.nil?
	_server_ip=_client.server_ip.split(/\s*,\s*/).include?(remoteIP)
	halt ERR_FORBIDDEN_IP.to_json if !_server_ip
  
	secret_key = ApiKey.where("client_key=? and status=? and reset=?", public_token, true, false).select(:secret_token)[0]
	halt ERR_INVALID_TOKEN.to_json if secret_key.nil?
	secret_token=secret_key[:secret_token]
  
	#data = request.path
	data = "#{data}?#{request.query_string}" if request.query_string.present?
	puts data
	puts

	if ['POST'].include? request.request_method
		request.body.rewind
		data = request.body.read
	end
	
	puts
	puts data
	puts
  
  	computed_signature=computeSignature(secret_token, data.strip)
	
	puts
	puts "Signature: #{computed_signature}"
	puts
   
  	if computed_signature == signature
		puts "Computed signature matches"
		pass
	else
	    puts "Computed signature did not match"
	    halt ERR_INVALID_SIGNATURE.to_json
  	end
end

def computeSignature(secret, data)
	digest=OpenSSL::Digest.new('sha256')
	signature = OpenSSL::HMAC.hexdigest(digest, secret.to_s, data)
	return signature
end
