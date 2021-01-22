feature 'Home page' do

  scenario 'it greets the user' do
    visit('/')
    expect(page).to have_content('Hello there!')
  end

end
