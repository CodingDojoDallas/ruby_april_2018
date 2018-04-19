require "rails_helper"

feature 'authentication feature' do
    before(:each) do
        @user = create(:user)
    end
    feature "user attempts to sign-in" do
        scenario 'visits sign-in page, prompted with email and password fields' do
            visit new_session_path
            expect(page).to have_field("email")
            expect(page).to have_field("password")
        end

        scenario 'logs in user if email/password combination is valid' do
            log_in
            expect(current_path).to eq("/users/#{User.last.id}")
            expect(page).to have_content("#{@user.first_name}")
        end

        scenario 'does not sign in user if email is not found' do
            log_in email: "wrong email"
            expect(current_path).to eq(new_session_path)
            expect(page).to have_content("Invalid combination")
        end

        scenario 'does not sign in user if email/password combination is invalid' do
            log_in password: "wrong password"
            expect(current_path).to eq(new_session_path)
            expect(page).to have_content("Invalid combination")
        end
    end
    feature "user attempts to log out" do
        before(:each) do
            log_in
        end
        scenario 'displays "Log Out" button when user is logged on' do
            expect(current_path).to eq("/users/#{User.last.id}")
            expect(page).to have_content("Log out")
        end
        scenario 'logs out user and redirects to login page' do
            click_on "Log out"
            expect(current_path).to eq(new_session_path)
        end
    end
end