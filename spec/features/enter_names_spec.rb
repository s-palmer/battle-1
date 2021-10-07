
feature 'Enter names' do # describe
  scenario 'see Player 2 hit points' do #it
    sign_in_and_play
    expect(page).to have_content 'Bob vs. Mark' 
  end
end


