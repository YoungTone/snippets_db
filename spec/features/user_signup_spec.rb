require 'rails_helper'

feature 'Sign Up' do
  background do
    visit new_user_path
  end
scenario "signing up without a username or password" do
  within("form") do
    fill_in 'user_username', with: ''
    fill_in 'user_password', with: ''
  end
    click_button 'Sign Up'
    expect(page).to have_content "Username must be at least six characters in length"
end

scenario "signing up with an exisiting username" do
  test_user = User.create(email: 'test@test.com', password: 'testing', photo: 'test', username: 'testing')
  within("form") do
    fill_in 'user_username', with: test_user.username
    fill_in 'user_password', with: 'whatever'
  end
    click_button 'Sign Up'
    expect(page).to have_content "Username already exisits"
  end

scenario "signing up with a correct username and password" do
  within("form") do
    fill_in 'user_username', with: 'testing'
    fill_in 'user_password', with: 'testing'
  end
  click_button 'Sign Up'
  expect(page).to have_content "Welcome"
end























end
