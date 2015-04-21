require 'rails_helper'

RSpec.describe "user login" do
  context "with valid credentials" do
    it "shows user dashboard" do
      User.create(username: "pow",
                  password: "password",
                  password_confirmation: "password"
        )
      visit login_path
      fill_in "session[username]", with: "pow"
      fill_in "session[password]", with: "password"
      click_link_or_button "Login"

      expect(page).to have_content("Welcome")
    end
  end
end