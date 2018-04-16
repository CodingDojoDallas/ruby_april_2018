require 'rails_helper'

feature "guest user creates an account" do
    before(:each) do
        visit "users/new"
    end

    scenario "successfully creates a new user account" do
        fill_in "user_username", with: "dlovely"
        click_button "Create"
        expect(page).to have_content "Welcome, dlovely"
        expect(page).to have_current_path("/messages")
    end

    scenario "unsuccessfully creates a new user account" do
        click_button "Create"
        expect(current_path).to eq(new_user_path)
    end

    scenario "doesn't fill out username field" do
        click_button "Create"
        expect(page).to have_content "Username can't be blank"
    end

end