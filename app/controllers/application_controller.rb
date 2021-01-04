require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "hotdog"
  end

  get "/" do
    erb :welcome
  end

  post "/signup" do
    @trainer = Trainer.create(username: params[:username], password_digest: params[:password])
    session[:id] = @trainer.id
    redirect "/home"

  end

  get '/home' do 
    if logged_in?
      erb :home
    else
      redirect "/"
    end
  end

   def current_user
    @current_user ||= Trainer.find_by_id(session[:id])
   end

   helpers do
    def logged_in?
    current_user !=nil
   end
  end


