require 'sinatra'
require 'pony'
require 'json'

get '/' do
	erb :home	
end

get '/about' do
	erb :about	
end

get '/gallery' do
	erb :gallery	
end

get '/contact' do
	erb :contact	
end

post '/contact' do
	puts "THE PARAMS"
	 p params
	  Pony.mail :to => 'rbsouth@gmail.com',
              :from => params[:email],
              :subject => params[:title],
              :body =>  params[:email] +" wrote:\n" + params[:message]
  erb :thank_you, :layout => false
end

get '/ajax-json' do
	#controller logic
	[{name: 'Reid'}, {name: 'Reid'}, {name: 'Reid'}].to_json
end
