class UsersController < ApplicationController
	
	def index
	end

	def new
		# will automatically go into views/users and look for 'new' file to render
	end

	def create
    # form submission, add 1 to session and create user, then direct to results page
    	new_user = User.create(user_params)
    	# if successful
	    # flash[:success] = "Successfully added a user!"
	    return redirect_to user_path if new_user.valid?
	    # much longer way of saying the same thing
    	# if new_dojo.valid?
	    #     # flash[:success] = "Thanks for adding a new dojo!"
	    #     return redirect_to '/users'
    	# end

    	# Otherwise there were errors
    	flash[:errors] = new_user.errors.full_messages
    	return redirect_to new_user_path
    	# EASY WAY TO REDIRECT BACK TO THE PAGE THEY WERE ON && flash is built in so just give it the key
    	# THIS IS NOT WORKING... REDIRECTS BUT DOES NOT OUTPUT ERRORS
    	# return redirect_to :back, errors: new_dojo.errors.full_messages
	end

	def show
		@this_user = User.last
	end

	def edit
	end

	def update
	end

	def destroy
	end
	
	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email)
		end
end
