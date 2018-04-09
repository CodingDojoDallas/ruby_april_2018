class UsersController < ApplicationController

	def index
		render text: "Welcome to our Users Page!"
	end

	def all_users
		render json: User.all
	end

	def new
		# will automatically go into views/users and look for 'new' file to render
	end

	def show
		# render json: User.find(1)
		this_user = User.find(params[:id])
		render json: this_user
	end

	def edit
		# will automatically go into views/users and look for 'new' file to render
		# this variable when named in the method is automatically available in the html.erb file
		# @this_user = User.find(1)
		@this_user = User.find(params[:id])
	end

	def create
		# puts "Inside create method"
		@new_user = User.create(user_params)
		# puts "Your new user: #{@new_user}"
		redirect_to '/users'
	end

	def update
		User.update(params[:id], user_params)
		redirect_to '/users'
	end

	def total
		@total_users = User.count
		render text: "There are a total of #{@total_users} users"
	end

	private
		def user_params
			params.require(:user).permit(:id, :name, :created_at, :updated_at)
		end
end
