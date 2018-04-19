require 'rails_helper'
feature 'User features' do 
	before do
		@user = create(:user)
	end
	feature "user registration" do
		before(:each) do
			visit new_user_path
		end
		scenario "visits registration page" do
			expect(page).to have_field('user[name]')
			expect(page).to have_field('user[email]')
			expect(page).to have_field('user[password]')
			expect(page).to have_field('user[password_confirmation]')
		end

		scenario "with proper inputs - create user and redirect to login page" do
			fill_in 'user[name]', with: 'curry'
			fill_in 'user[email]', with: 'curry@warriors.com'
			fill_in 'user[password]', with: 'password'
			fill_in 'user[password_confirmation]', with: 'password'
			click_button 'Join'
			expect(current_path).to eq(new_session_path)
		end

		scenario "invalid input - redirect back to registration with validations" do
			click_button 'Join'
			expect(page).to have_text("Name can't be blank")
			expect(page).to have_text("Email can't be blank")
			expect(page).to have_text("Password can't be blank")
			# expect(page).to have_text("Password Confirmation can't be blank")
		end
	end
	feature "user dashboard" do
		before do
			log_in
		end
		scenario "displays user information" do
			expect(page).to have_text("#{@user.name}")
			expect(page).to have_link('Edit Profile')
		end 
	end
end