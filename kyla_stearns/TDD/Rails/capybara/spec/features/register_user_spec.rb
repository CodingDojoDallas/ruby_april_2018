require 'rails_helper'
feature "User creates an account" do
	before(:each) do
    	visit new_user_path
	end
  scenario "successfully creates a new user account" do
    fill_in "user[first_name]", with: "kyla"
    fill_in "user[last_name]", with: "stearns"
    fill_in "user[email]", with: "kdstearns@me.com"
    # click_button "Create"
    find('input[name="Create"]').click

    # Redirect to the user show page is user successfully created -- wrote 'show' method to display last user info
    expect(current_path).to eq(user_path)
    # would have to make the page actually display this message if you want this to work
    # expect(page).to have_content "User successfully created"
  end

  scenario "does not enter first name" do
    fill_in "user[last_name]", with: "chang"
    fill_in "user[email]", with: "schang@codingdojo.com"
    # click_button "Create"
    find('input[name="Create"]').click

    # would have to create validations in the model for this to work
    expect(page).to have_content "First name can't be blank"
  end

  scenario "does not enter last name" do
    fill_in "user[first_name]", with: "shane"
    fill_in "user[email]", with: "schang@codingdojo.com"
    # click_button "Create"
    find('input[name="Create"]').click

    # would have to create validations in the model for this to work
    expect(page).to have_content "Last name can't be blank"
  end

  scenario "does not enter email" do
    fill_in "user[first_name]", with: "shane"
    fill_in "user[last_name]", with: "chang"
    # click_button "Create"
    find('input[name="Create"]').click

    # would have to create validations in the model for this to work
    expect(page).to have_content "Email can't be blank"
  end

  scenario "has an invalid email" do
    fill_in "user[first_name]", with: "shane"
    fill_in "user[last_name]", with: "chang"
    fill_in "user[email]", with: "shane@com"
   # click_button "Create"
    find('input[name="Create"]').click

    # would have to create validations in the model for this to work
    expect(page).to have_content "Invalid email"
  end

  scenario "has duplicate email" do
    fill_in "user_first_name", with: "shane"
    fill_in "user[last_name]", with: "chang"
    fill_in "user[email]", with: "schang@codingdojo.com"
    # click_button "Create"
	  find('input[name="Create"]').click

    # would have to create validations in the model for this to work
    expect(page).to have_content "This email is already in the database"
  end

end