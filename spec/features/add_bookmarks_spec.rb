feature 'adding bookmarks' do
  scenario 'can click on a bookmarks button on homepage' do
    visit('/')
    click_button 'Add Bookmarks'
    expect(page).to have_current_path('/bookmarks/new')
  end
  scenario 'can submit a bookmark to be added' do
    visit('/')
    click_button 'Add Bookmarks'
    fill_in('url', with: 'http://add.com')
    click_button 'Add'
    expect(page).to have_current_path('/bookmarks')
    expect(page).to have_content 'http://add.com'
  end
end
