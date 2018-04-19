require 'rails_helper'
feature 'User features' do
    before(:each) do
        @user = create(:user)
        log_in
    end
    feature "User Settings Dashboard" do
        before(:each) do 
            visit "/users/#{@user.id}/edit"
        end

        scenario "visit users edit page" do
            expect(page).to have_field("user[first_name]")
            expect(page).to have_field("user[last_name]")
        end

        scenario "inputs filled out correctly" do
            expect(find_field("user[first_name]").value).to eq(@user.first_name)
            expect(find_field("user[email]").value).to eq(@user.email)
        end

        scenario "incorrectly updates information" do
            fill_in "user[email]", with: "invalid email"
            click_button "Update"
            expect(current_path).to eq("/users/#{@user.id}/edit")
            expect(page).to have_content("Email is invalid")
        end

        scenario "correctly updates information" do
            fill_in "user[first_name]", with: "Dlovely"
            fill_in "user[email]", with: "new@email.com"
            click_button "Update"
            expect(page).to have_content("Dlovely")
        end

        scenario "destroys user and redirects to registration page" do
            click_on "Delete Account"
            expect(current_path).to eq(new_user_path)
        end 
    end
end