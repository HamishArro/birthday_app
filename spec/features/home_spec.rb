feature 'Home page' do

  background {visit('/')}

  scenario 'greets the user' do
    expect(page).to have_content('Hello there!')
  end

  scenario 'asks for name' do
    expect(page).to have_content("What's your name?")
  end

  scenario 'asks for birthday' do
    expect(page).to have_content("When's your birthday?")
  end

end
