
def logIncomingRequest(remote_ip, request_url, path_info, request_body)
  	puts IncomingRequest.create!(remote_ip: remote_ip, request_url: request_url, path_info: path_info, request_body: request_body)
end


def logThirdPartyRequest(clientId, reference, req_amount, transID, trans_type, the_new_url, the_token, req_nickname)
	puts ThirdPartyMaster.create!(client_id: clientId, reference: reference, amount: req_amount, trans_id: transID, trans_type: trans_type, callback_url: the_new_url, token: the_token, nickname: req_nickname)
end
