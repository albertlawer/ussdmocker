require 'sinatra'
require 'json'
require 'sinatra/activerecord'
require 'faraday'
require 'uri'




def genUniquetoken
  time=Time.new
  randval=rand(999).to_s.center(3, rand(9).to_s)
  strtm=time.strftime("%y%m%d%H%M%L")
  
  token = randval+strtm
  return token
end




get "/" do
  erb :index
end

get "/session_start" do
  session[:session_id] = genUniquetoken
  # erb :page
end
