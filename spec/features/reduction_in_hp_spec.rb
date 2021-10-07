feature 'reduction in player hp' do # describe
  scenario 'reduction in player hp' do #it
    sign_in_and_play
    click_button 'Player 1 Attack'
    expect(page).to have_content 'Mark: 50HP' 
  end
end