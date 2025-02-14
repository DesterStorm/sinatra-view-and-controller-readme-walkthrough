require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reverse
  end

  get '/friends' do
    @friends = ["Emily Wilding Davidson", "harriet Tubman", "Joan of Arc", "Malala Yousafzai", "Sojourner Truth"]
    
    erb :friends
  end

end