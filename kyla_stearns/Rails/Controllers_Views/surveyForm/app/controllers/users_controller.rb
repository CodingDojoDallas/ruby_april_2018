class UsersController < ApplicationController

	def index
		# arriving at root route, render index.html.erb and set session
		session[:submit] = 0
		puts "Index - Session is at: #{session[:submit]}"
	end


	def process data
		# form submission, add 1 to session and create user, then direct to results page
		@new_user = User.create(user_params)
		session[:submit] += 1
		puts "Process Form - Session is at: #{session[:submit]}"
		redirect_to '/results'
	end

	def results
		this_user = User.last
	end

	private
	# this is allowing access to call user_params -- and works since we are naming these keys in our HTML
		def user_params
			params.require(:user).permit(:id, :name, :location, :language, :comment, :created_at, :updated_at)
		end
end
