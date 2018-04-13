require 'rails_helper'
feature "User posts a message" do
	before(:each) do
    	visit new_user_path
      fill_in "user[username]", with: "wildNout"
      click_button "Sign In"
  end
  scenario "successfully posts a message" do
    fill_in "message[content]", with: "This is such lovely weather!"
    click_button "Post a Message"
    # find('input[name="Post a Message"]').click

    # Redirect to the dashboard page
    expect(current_path).to eq(messages_path)
    
  end

  scenario "does not enter a message" do
    click_button "Post a Message"
    # find('input[name="Post a Message"]').click

    # would have to Post a Message validations in the model for this to work
    expect(page).to have_content "Content can't be blank"
  end

  scenario "Message is not 10 characters " do
    fill_in "message[content]", with: "So nice!"
    click_button "Post a Message"
    # find('input[name="Post a Message"]').click

    # would have to create validations in the model for this to work
    expect(page).to have_content "Content is too short (minimum is 10 characters)"
  end

end