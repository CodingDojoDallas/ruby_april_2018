class UsersController < ApplicationController

	def index
		# arriving at root route, render index.html.erb and set session
		session[:submit] ||= 0
		# puts "Index - Session is at: #{session[:submit]}"

		# use flash to show message 
	end

	def create
    # form submission, add 1 to session and create user, then direct to results page
    	new_user = User.create(user_params)
    	if new_user.valid?
	        session[:submit] += 1
	        flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:submit]} times."
	        puts "Process Form - Session is at: #{session[:submit]}"
	        return redirect_to '/results'
    	end

    	# Otherwise there were errors
    	flash[:errors] = new_user.errors.full_messages
    	return redirect_to '/'
end

	def results
		@this_user = User.last
	end

	private
	# this is allowing access to call user_params -- and works since we are naming these keys in our HTML
		def user_params
			params.require(:user).permit(:id, :name, :location, :language, :comment, :created_at, :updated_at)
		end
end
