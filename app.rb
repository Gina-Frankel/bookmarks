require 'sinatra'
class Bookmarker < Sinatra::Base
  enable :sessions
  get '/' do
    "Hello bookmark!"
  end
  run! if app_file == $0
end
