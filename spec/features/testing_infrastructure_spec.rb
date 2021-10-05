
feature 'Testing infrastructure' do # describe
  scenario 'Can run app and check page content' do #it
    visit('/')
    expect(page).to have_content 'Hello Battle!'
  end
end