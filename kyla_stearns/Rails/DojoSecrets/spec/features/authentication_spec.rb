require 'rails_helper'

feature 'authentication' do
	before do
		@user = create(:user)
	end

	feature "user sign-in" do
		scenario "visits sign-in page" do
			visit new_session_path
			expect(page).to have_field('user[email]')
			expect(page).to have_field('user[password]')
		end

		scenario "logs user in if email/password combination is valid" do
			log_in # runs the function we created in spec_helper.rb file
			expect(current_path).to eq(user_path(@user.id))
			expect(page).to have_text(@user.name)
		end

		scenario "does not sign in user if email is not found" do
			log_in email: 'kdstearns@me.com' # wrong email
			expect(current_path).to eq(new_session_path)
			expect(page).to have_text('Could not find this email address, please register')
		end

		scenario "does not sign in user if email/password combination is invalid" do 
			log_in password: 'ooeygooey' # wrong password
			expect(current_path).to eq(new_session_path)
			expect(page).to have_text('Invalid Login')
		end
	end

	feature "user log-out" do
		before do 
			log_in # runs the function we created in spec_helper.rb file
		end

		scenario "displays 'Log Out' button when user is logged in" do
			expect(page).to have_button('Log Out')
		end

		scenario "logs out user and redirects to login page" do
			click_button 'Log Out'
			expect(current_path).to eq(new_session_path)
		end
	end
end