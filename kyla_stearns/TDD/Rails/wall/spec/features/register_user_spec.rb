require 'rails_helper'
feature "User creates an account" do
	before(:each) do
    	visit new_user_path
	end
  scenario "successfully creates a new user account" do
    fill_in "user[username]", with: "cash_money"
    click_button "Sign In"
    # find('input[name="SignIn"]').click

    # Redirect to the dashboard page
    expect(current_path).to eq(messages_path)
    
  end

  scenario "does not enter username" do
    click_button "Sign In"
    # find('input[name="SignIn"]').click

    # would have to Sign In validations in the model for this to work
    expect(page).to have_content "Username can't be blank"
  end

  scenario "username is not 5 characters " do
    fill_in "user[username]", with: "cash"
    click_button "Sign In"
    # find('input[name="SignIn"]').click

    # would have to Sign In validations in the model for this to work
    expect(page).to have_content "Username is too short (minimum is 5 characters)"
  end

  scenario "username is already taken" do
    fill_in "user[username]", with: "kylajamz"
    click_button "Sign In"
    # find('input[name="SignIn"]').click
    
    # db wil reset every time so have to go back to the page and try to do the same username
    visit new_user_path
    fill_in "user[username]", with: "kylajamz"
    click_button "Sign In"
    # would have to create validations in the model for this to work
    expect(page).to have_content "Username has already been taken"
  end
end