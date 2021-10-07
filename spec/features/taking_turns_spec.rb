feature 'should show player turn' do # describe
  scenario 'Starts with Player 1' do #it
    sign_in_and_play
    expect(page).to have_content "Bob's turn" 
  end
end

  feature 'players can take turns to attack' do # describe
    scenario 'Player 2 can attack after Player 1' do #it
      sign_in_and_play
      click_button 'Attack'
      click_button 'End Turn'
      expect(page).to have_content "Mark's turn" 
    end
  end