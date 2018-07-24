require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/' do
    @puppy = Puppy.new(params.values)
    binding.pry
    
    erb :display_puppy
  end
    
end