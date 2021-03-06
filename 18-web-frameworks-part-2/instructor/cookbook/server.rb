require 'sinatra'

require_relative 'recipe'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  @title = 'About Us'
  erb :about
end

get '/contact' do
  @title = 'Contact Us'
  erb :contact
end

get '/legal' do
  @title = 'Legal Stuff'
  erb :legal
end

get '/recipes' do
  @title = 'Recipes'

  @recipes = Recipe.all

  erb :recipes
end

get '/recipes/:id' do
  # params is a hash
  id = params[:id]
  @recipe = Recipe.find(id)

  erb :recipe
end
