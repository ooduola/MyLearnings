require 'sinatra'

get '/' do 
  @name = %w(Tunji Natalie Dipo).sample
  erb :index
end

get '/secret' do 
  'this page is a secret'
  'Africa is the future'
end

get '/hello' do
  @visitor = params[:name]
  erb :index
end