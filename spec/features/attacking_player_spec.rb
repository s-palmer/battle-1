feature 'attacking a player' do # describe
  scenario 'Confirmation when one player attacks another' do #it
    sign_in_and_play
    click_button 'Player 1 Attack'
    expect(page).to have_content 'Bob attacked Mark!' 
  end
end

feature 'players can take turns to attack' do # describe
  scenario 'Player 2 can attack after Player 1' do #it
    sign_in_and_play
    click_button 'Player 1 Attack'
    click_button 'End Turn'
    click_button 'Player 2 Attack'
    expect(page).to have_content 'Mark attacked Bob!' 
  end
end