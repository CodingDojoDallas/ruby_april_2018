class UsersController < ApplicationController
	def index
	end

	def new
		session[:id] ||= 0
	end

	def create
		# form submission, add 1 to session and create user, then direct to results page
    	new_user = User.create(user_params)
    	# if successful
	    # flash[:success] = "Successfully added a user!"
	    if new_user.valid?
	    	session[:id] = new_user.id
	    	return redirect_to messages_path
		end

    	# Otherwise there were errors
    	flash[:errors] = new_user.errors.full_messages
    	return redirect_to new_user_path
	end

	def logout
	end

	private
		def user_params
			params.require(:user).permit(:username)
		end
end
