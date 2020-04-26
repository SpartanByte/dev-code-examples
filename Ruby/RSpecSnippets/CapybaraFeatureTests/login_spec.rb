# you need to require rails_helper in each test file you are using capybara in
require 'rails_helper'

RSpec.feature "Logging in a User" do
    #equivalent of 'it' method in rspec
    scenario "A user creates a new article" do
        visit "/"
        #Click link to load new article page
        click_link "Sign In"    
        #Capybara fills in the following fields with given values
        fill_in "Email", with: "admin@codelation.com"
        fill_in "Password", with: "TRI_key123"
        #Create article action
        click_button "Log in"
        #assertion
        expect(page).to have_content("Logout")
        #in a rails app
        expect(page.current_path).to eq(root_path)
    end
end