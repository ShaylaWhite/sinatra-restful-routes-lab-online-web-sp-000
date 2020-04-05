require "./config/environment"
require "./app/models/recipe"

class ApplicationController < Sinatra::Base
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  post '/recipes' do
    erb :recipe
  end 
  
  get '/recipes/:id' do
  @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end
  
  
  
end