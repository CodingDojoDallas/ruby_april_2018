require 'rails_helper'
feature "User logs out" do
	before(:each) do
      visit new_user_path
      fill_in "user[username]", with: "keepItReal"
      click_button "Sign In"
  end
  scenario "successfully logs out" do
    click_link "logout"

    # Redirect to the dashboard page
    expect(current_path).to eq(new_user_path)
  end
end