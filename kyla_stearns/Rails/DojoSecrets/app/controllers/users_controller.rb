class UsersController < ApplicationController
	before_action :user_info, except: [:new, :create]
	skip_before_action :require_login, only: [:new, :create]

	def new
	# render form to register/create user
	end

	def create
	# submitted form to create new user 
		@user = User.create(user_params)
		if @user.valid?
			return redirect_to new_session_path
		end

		flash[:errors] = @user.errors.full_messages
		return redirect_to new_user_path

	end

	def show
	# render show page template
		@this_user = User.find_by(id: params[:id])
		@user_secrets = @this_user.secrets
		@user_liked = @this_user.secrets_liked
	end

	def edit
	# pull user info and display form template
		@this_user = User.find_by(id: params[:id])
	end

	def update
		@this_user = User.find_by(id: params[:id])
		@this_user.update(user_params)
		if @this_user.valid?
			return redirect_to user_path(@this_user.id) #show page
		end

		flash[:errors] = @this_user.errors.full_messages
		return redirect_to edit_user_path(@this_user.id)
	end

	def destroy
	# pull user info to delete from database
		@this_user = User.find_by(id: params[:id])
		# p @this_user, "INSIDE DESTROY METHOD WITH USER"
		@this_user.destroy
		session[:id] = nil
		return redirect_to new_user_path
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end

		def user_info
			# p params[:id], "user_info with params[:id]"
			# p session[:id], "user_info with session[:id]"
			# params[:id] will be in string format, session[:id] will already be integer format
			unless params[:id].to_i == session[:id]
				flash[:errors] = ["You cannot access other users' information."]
  				return redirect_to user_path(session[:id])
  			end
		end
end