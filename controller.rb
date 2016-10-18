require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative ('./models/shoe')

get '/' do
  erb(:home)
end

get '/shoe/new' do
  erb(:new)
end

get '/shoe/new/frau' do
  erb(:frau)
end

get '/shoe/new/kinder/size' do
  erb(:kinder)
end

post '/shoe' do
  @shoe = Shoe.new(params)
  @shoe.save()
  erb(:create)
end

get '/shoe' do
  @shoes = Shoe.all()
  erb(:index)
end

