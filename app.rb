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

  get '/bookmarks/new' do
    erb(:bookmark_new)
  end 

  post '/bookmarks' do
    url  = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks(url) VALUES('#{url}')")
    p "param = #{url}"
    p "form data submitted to the /bookmarks route"
    redirect '/bookmarks'
  end

end
