require "./config/environment"
require "./app/models/recipes"

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'


   get '/' do
  end
  
  get '/recipes' do
  @recipes = Recipe.all
    erb :index
  end


  end
end