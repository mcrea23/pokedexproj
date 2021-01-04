class PokedexproJsController < ApplicationController

  # GET: /pokedexpro_js
  get "/pokedexpro_js" do
    erb :"/pokedexpro_js/index.html"
  end

  # GET: /pokedexpro_js/new
  get "/pokedexpro_js/new" do
    erb :"/pokedexpro_js/new.html"
  end

  # POST: /pokedexpro_js
  post "/pokedexpro_js" do
    redirect "/pokedexpro_js"
  end

  # GET: /pokedexpro_js/5
  get "/pokedexpro_js/:id" do
    erb :"/pokedexpro_js/show.html"
  end

  # GET: /pokedexpro_js/5/edit
  get "/pokedexpro_js/:id/edit" do
    erb :"/pokedexpro_js/edit.html"
  end

  # PATCH: /pokedexpro_js/5
  patch "/pokedexpro_js/:id" do
    redirect "/pokedexpro_js/:id"
  end

  # DELETE: /pokedexpro_js/5/delete
  delete "/pokedexpro_js/:id/delete" do
    redirect "/pokedexpro_js"
  end
end
