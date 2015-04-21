require 'rails_helper'

RSpec.describe 'User account can be created' do
  context 'with valid attributes' do
    it 'can create a new user' do
      visit new_user_path
      fill_in "user[username]", with: "tester"
      fill_in "user[password]", with: "password"
      fill_in "user[password_confirmation]", with: "password"
      click_link_or_button "Create User"
      expect(page).to have_content("tester")
    end
  end
end