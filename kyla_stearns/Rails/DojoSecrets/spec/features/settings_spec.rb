require 'rails_helper'
feature "User Settings features" do
	before do
		@user = create(:user)
		log_in
	end
	feature "User Settings Dashboard" do
		before(:each) do
			visit edit_user_path(@user.id)
		end

		scenario "visit users edit page" do
			expect(page).to have_field('user[name]')
			expect(page).to have_field('user[email]')
		end

		scenario "inputs filled out correctly" do
			expect(find_field('user[name]').value).to eq(@user.name)
			expect(find_field('user[email]').value).to eq(@user.email)
		end

		scenario "incorrectly updates information" do
			fill_in 'user[name]', with: "Bobby"
			fill_in 'user[email]', with: "bobby.com"
			click_button "Update User"
			expect(current_path).to eq(edit_user_path(@user.id))
			expect(page).to have_text("Email is invalid")
		end

		scenario "correctly updates information" do
			fill_in 'user[name]', with: "Jimmy"
			fill_in 'user[email]', with: "jimmy@gmail.com"
			click_button "Update User"
			expect(page).to have_text("Jimmy")
		end

		scenario "destroys user and redirects to registration page" do
			p current_path, "DESTROY TEST CURRENT PATH"
			click_button "Delete Account"
			expect(current_path).to eq(new_user_path)
		end
	end
end