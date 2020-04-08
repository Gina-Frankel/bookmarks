require 'bookmark'

  describe Bookmarks do
    context '#all' do   
      it 'returns a lsit of bookmarks' do 
        bookmarks = Bookmarks.all
        expect(bookmarks).to include "http://www.something.com"
      end 
    end 
  # to see  if it is an array 
  # to see if they are bookmark instances 
end