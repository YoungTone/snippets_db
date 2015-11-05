require 'rails_helper'

feature "Login" do
  background do
    visit login_path
  end
  scenario "logging in without username or password" do
    within(".login-form") do
      fill_in "username", with: ''
      fill_in 'password', with: ''
    end
    click_button 'Login'
    expect(page).to have_content 'Please enter valid username and password'
  end

  scenario 'logging in with incorrect username or password' do
    test_user = User.create(email: 'test@test.com', password: 'testing', photo: 'test', username: 'testing')
    within(".login-form") do
      fill_in 'username', with: test_user.username
      fill_in 'password', with: 'whatever'
    end
    click_button 'Login'
    expect(page).to have_content "Incorrect username or password"
  end

  scenario 'correct log in' do
    login_user
    expect(page).to have_content "Welcome back #{@user.username}"
    expect(page.current_path).to eq root_path
  end
end

def login_user
  @user = User.create(email: 'test@test.com', password: 'testing', photo: 'test', username: 'testing')
  visit login_path
  within ".login-form" do
    fill_in "username", with: @user.username
    fill_in "password", with: @user.password
  end
  click_button 'Login'
end

feature 'logging out' do
  background do
    login_user
  end
  scenario 'user logs out' do
    expect(page.current_path).to eq root_path
    click_link "Logout"
    expect(page.current_path).to eq login_path
  end
end

feature 'authorization for logged in users' do
  background do
    login_user
  end
  scenario 'trying to sign up or log in while logged in' do
    expect(page.current_path).to eq root_path
    visit login_path
    expect(page.current_path).to eq root_path
    visit signup_path
    expect(page.current_path).to eq root_path
  end
end
