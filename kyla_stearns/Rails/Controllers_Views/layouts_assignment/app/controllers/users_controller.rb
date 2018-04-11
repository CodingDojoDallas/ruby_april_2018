class UsersController < ApplicationController
	layout "two_column"
	# could also say: render layout: "two_column" in a specific method or use ONLY/EXCEPT
	
	def index
		# will automatically go into views/users and look for 'index' file to render
		@all_users = User.all
		# p @all_users, "all users"
	end

	def new
		@new_user = User.create(user_params)
		redirect_to root_path
	end


	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :favorite_language)
		end

end