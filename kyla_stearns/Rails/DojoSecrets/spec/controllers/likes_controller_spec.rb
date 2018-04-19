require 'rails_helper'

RSpec.describe LikesController, type: :controller do
	before do
		@user = create(:user)
		@secret = create(:secret, user: @user)
		@like = create(:like, secret: @secret, user: @user)
	end

	context "when not logged in" do
		before do
			session[:id] = nil
		end

		it "cannot create a like" do
			get :create
			expect(response).to redirect_to(new_session_path)
		end

		it "cannot destroy a like" do
			get :destroy, id: @like
			expect(response).to redirect_to(new_session_path)
		end
	end
	context "when logged in as wrong user" do
		before do
		# when running test, it gets stuck on saying that 'current_path' is an undefined method/variable
			@user2 = create(:user, name:"Kyla Stearns", email: "kdstearns@me.com", password: "password")
			# p @user2
			session[:id] = @user2.id
		end
		# this is saying that it has re-directed too many times when trying manually
		it "cannot destroy another user's like" do
			# p @secret.id, "inside cannot destroy with @secret.id"
			get :destroy, id: @secret.id
			# this path is what happens if they are not the current_user
			expect(response).to redirect_to(secrets_path)
		end
	end
end