require 'rails_helper'
feature "secret features" do 
    before do
        @user = create(:user)
        @user2 = create(:user, email: "user@user.com")
        @secret2 = create(:secret, user: @user2, content: "Lets make this content unique")
        log_in
    end

    feature "Users personal secret page" do
        before do 
            visit user_path(@user.id)
        end

        scenario "shouldn't see other user's secrets" do
            expect(page).to_not have_content(@secret2.content)
        end

        scenario "create a new secret" do
            fill_in "secret[content]", with: "I have to poop"
            click_button "Create Secret"
            expect(current_path).to eq(user_path(@user.id))
            expect(page).to have_content("I have to poop")
        end

        scenario "destroy secret from profile page, redirects to user profile page" do
            secret = create(:secret, user: @user)
            visit user_path(@user.id)
            click_link "Delete Secret"
            expect(current_path).to eq(user_path(@user.id))
            expect(page).to_not have_text(secret.content)
        end
    end

    feature "Secret Dashboard" do
        before do
            @secret = create(:secret, user: @user)
        end
        
        before(:each) do
            visit secrets_path
        end

        scenario "displays everyone's secrets" do
            expect(page).to have_content(@secret.content)
            expect(page).to have_content(@secret2.content)
        end

        scenario "destroy secret from index page, redirects to user profile page" do
            click_link "Delete Secret"
            expect(current_path).to eq(user_path(@user.id))
            expect(page).to_not have_content(@secret.content)
        end
    end
end