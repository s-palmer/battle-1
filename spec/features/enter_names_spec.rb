
feature 'Enter names' do # describe
  scenario 'enter names in form' do #it
    visit('/')
    fill_in :player_1, with: 'Bob'
    fill_in :player_2, with: 'Mark'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'Bob vs. Mark' 
  end
end


