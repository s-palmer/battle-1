
feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1, with: 'Bob'
    fill_in :player_2, with: 'Mark'
    click_button 'Submit'
    expect(page).to have_content 'Mark: 60HP'
  end
end