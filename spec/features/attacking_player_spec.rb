feature 'attacking a player' do # describe
  scenario 'Confirmation when one player attacks another' do #it
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Bob attacked Mark!' 
  end
end