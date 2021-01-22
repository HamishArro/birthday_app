require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "This is the start of my birhtday app"
  end

end
