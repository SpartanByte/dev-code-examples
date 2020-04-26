# you need to require rails_helper in each test file you are using capybara in
require 'rails_helper'

RSpec.feature "Creating Articles" do
    #equivalent of 'it' method in rspec
    scenario "A user creates a new article" do
        visit "/"
        #Click link to load new article page
        click_link "New Article"    
        #Capybara fills in the following fields with given values
        fill_in "Title", with: "Creating a blog"
        fill_in "Body", with: "Lorem Ipsum etc etc"
        #Create article action
        click_button "Create Article"
        #assertion
        expect(page).to have_content("Article has been created")
        #in a rails app
        expect(page.current_path).to eq(articles_path)
    end
end