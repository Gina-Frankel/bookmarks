feature "showing bookmarks" do
  scenario "should be able to view bookmarks from home page" do
    visit('/')
    expect(page).to have_button('View Bookmarks')
  end
end