require 'sinatra'
require 'pony'

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
	  Pony.mail :to => 'rbsouth@gmail.com',
              :from => params[:email],
              :subject => params[:title],
              :body =>  params[:email] +" wrote:\n" + params[:message]
  @thank_you_message = "Thanks for your email!"
  erb :contact
end
