require 'rails_helper'

RSpec.describe SecretsController, type: :controller do 
	before do
		@user = create(:user)
		@secret = create(:secret, user: @user)
	end

	context "when not logged in" do
		before do
			session[:id] = nil
		end

		it "cannot access secret display page" do
			get :index
			expect(response).to redirect_to(new_session_path)
		end

		it "cannot create a secret" do
			get :create
			expect(response).to redirect_to(new_session_path)
		end

		it "cannot destroy a secret" do
			get :destroy, id: @secret
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
		it "cannot destroy another user's secret" do
			get :destroy, id: @secret
			# this path is what happens if they are not the current_user
			expect(response).to redirect_to(secrets_path)
		end
	end
end