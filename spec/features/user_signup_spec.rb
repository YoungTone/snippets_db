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
























end
