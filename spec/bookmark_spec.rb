require 'bookmark'

  describe Bookmarks do
    context '#all' do   
      it 'returns a list of bookmarks' do
        # setting up the test database
        connection = PG.connect(dbname: 'bookmark_manager_test')
        connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.something.com');")

        # running the actual bookmark method #all
        bookmarks = Bookmarks.all

        # testing that it returns the expected value
        expect(bookmarks).to include "http://www.something.com"
      end 
    end 
  # to see  if it is an array 
  # to see if they are bookmark instances 
end