require 'rails_helper'

RSpec.describe UsersController, type: :controller do 
	before do
		@user = create(:user)
	end

	context "when not logged in" do
		before do
			session[:id] = nil
		end

		it "cannot access show page" do
			get :show, id: @user
			expect(response).to redirect_to(new_session_path)
		end

		it "cannot access edit page" do
			get :edit, id: @user
			expect(response).to redirect_to(new_session_path)
		end

		it "cannot access update method" do
			get :update, id: @user
			expect(response).to redirect_to(new_session_path)
		end

		it "cannot access destroy method" do
			get :destroy, id: @user
			expect(response).to redirect_to(new_session_path)
		end
	end

	context "when signed in as wrong user" do
		before do
			@user2 = create(:user, name:"Kyla Stearns", email: "kdstearns@me.com", password: "password")
			# p @user2
			session[:id] = @user2.id
		end

		it "cannot access profile page of another user" do
			get :show, id: @user
			expect(response).to redirect_to(user_path(@user2.id))
		end

		it "cannot access edit page of another user" do
			get :edit, id: @user
			expect(response).to redirect_to(user_path(@user2.id))
		end

		it "cannot update another user" do
			get :update, id: @user
			expect(response).to redirect_to(user_path(@user2.id))
		end

		it "cannot destroy another user" do
			get :destroy, id: @user
			expect(response).to redirect_to(user_path(@user2.id))
		end
	end
end