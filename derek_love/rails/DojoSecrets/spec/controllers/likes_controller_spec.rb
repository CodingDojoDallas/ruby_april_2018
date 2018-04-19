require 'rails_helper'
RSpec.describe LikesController, type: :controller do 
  before do 
    @user = create(:user)
    @secret = create(:secret, user: @user)
    @like = create(:like, secret: @secret, user: @user)
  end

  context "when not logged in " do 
    before do 
      session[:user_id] = nil
    end

    it "cannot create a like" do
        post :create, like: build(:like)
        expect(response).to redirect_to(new_session_path)
    end

    it "cannot destroy a like" do
        delete :destroy, id: @like
        expect(response).to redirect_to(new_session_path)
    end
  end

  context "when signed in as the wrong user" do
    before do
        @user2 = create(:user, first_name: "choo", last_name: "boo", email: "more.choi.boi@dojo.com", password: "password", password_confirmation: "password")
    end

    it "shouldn't be able to destroy a like" do
        delete :destroy, id: @like
        expect(response).to_not be_success
    end
  end
end