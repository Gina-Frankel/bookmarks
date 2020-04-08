require 'sinatra'
require './lib/bookmark'
class Bookmarker < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end
  run! if app_file == $0

  get '/bookmarks' do 
    @bookmarks = Bookmarks.all
    erb(:bookmarks)
  end 
end
