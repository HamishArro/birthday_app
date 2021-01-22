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

  scenario 'user can enter name' do
    fill_in('name', with: 'Hamish')
  end

  scenario 'user can enter the day' do
    fill_in('day', with: '4')
  end

  scenario 'user can enter the month' do
    select('April', from: 'month')
    expect(page).to have_select('month', selected: 'April')
  end

end
