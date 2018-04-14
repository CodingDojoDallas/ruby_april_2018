class SessionsController < ApplicationController
	def new
		# render login form
	end

	def create
		# Log User In
		@user = User.find_by(email: params[:user][:email])
		# p @user, "this is your user in sessions create method"
		#returns something and isn't 'nil'
		if @user 
			# if authenticate true
			if @user.authenticate(params[:user][:password])
				# save user id into session
				session[:id] = @user.id
				# redirect to users profile page
				return redirect_to user_path(@user.id) 
			end
		# if authenticate false
			# add an error message into flash
			flash[:errors] = ["Invalid Login"]
			# p flash[:errors], "These are your false auth errors"
			# redirect to login form
			return redirect_to new_session_path
		end
		# else @user didn't return anything
		flash[:errors] = ["Could not find this email address, please register."]
		# p flash[:errors], "THESE ARE YOUR FLASH ERRORS"
		return redirect_to new_session_path
	end

	def destroy
		# Log User Out
		# set session to nil
		session[:id] = nil
		# redirect to login form
		redirect_to new_session_path
	end

	private
		def user_params
			params.require(:user).permit(:email, :password)
		end
end