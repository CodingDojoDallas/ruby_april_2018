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
      visit "/users/#{@user.id}"
    end
    scenario "shouldn't see other user's secrets" do 
      expect(page).to_not have_text(@secret2.content)
    end    
    scenario "create a new secret" do
      fill_in 'Content', with: "My new secret"
      click_button 'Create Secret'
      expect(current_path).to eq("/users/#{@user.id}")
      expect(page).to have_text('My new secret')
    end
    scenario "destroy secret from profile page, redirects to user profile page" do
      secret = create(:secret, user: @user)
      visit "/users/#{@user.id}"
      click_button 'Delete Secret'
      expect(current_path).to eq("/users/#{@user.id}")
      expect(page).not_to have_text(secret.content)
    end    
  end
  feature "Secret Dashboard" do 
    before do 
      @secret = create(:secret, user: @user)
    end
    before(:each) do 
      visit "/secrets"
    end
    scenario "displays everyone's secrets" do 
      expect(page).to have_text(@secret.content)
      expect(page).to have_text(@secret2.content)      
    end
    scenario "destroy secret from index page, redirects secrets" do 
      click_button 'Delete Secret'
      expect(current_path).to eq("/secrets")
      expect(page).not_to have_text(@secret.content)      
    end    
  end
end