require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
  end

end
