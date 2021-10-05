
feature 'Enter names' do # describe
  scenario 'see Player 2 hit points' do #it
    visit('/')
    fill_in :player_1, with: 'Bob'
    fill_in :player_2, with: 'Mark'
    click_button 'Submit'
    expect(page).to have_content 'Bob vs. Mark' 
  end
end


