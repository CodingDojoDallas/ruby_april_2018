require "rails_helper"

feature "User features" do
    before(:each) do
        @user = create(:user)
    end
    feature "user sign-up" do
        before(:each) do
            visit new_user_path
        end

        scenario 'visits sign-up page' do
            expect(page).to have_field("user[first_name]")
            expect(page).to have_field("user[last_name]")
        end

        scenario "with improper inputs, redirects back to sign in and shows validations" do
            click_button "Register"
            expect(current_path).to eq(new_user_path)
            expect(page).to have_content("can't be blank")
        end

        scenario "with proper inputs, create user and redirects to login page" do
            fill_in "user[email]", with: "dlovely@mail.com"
            fill_in "user[first_name]", with: "Derek"
            fill_in "user[last_name]", with: "Love"
            fill_in "user[password]", with: "password"
            fill_in "user[password_confirmation]", with: "password"
            click_button "Register"
            expect(current_path).to eq(new_session_path)
        end
    end
    feature "user dashboard" do 
        before(:each) do
            log_in
        end
        scenario "displays user information" do
            expect(page).to have_content("#{@user.first_name}")
            expect(page).to have_link("Log out")
        end
    end
end