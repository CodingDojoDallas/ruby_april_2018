class UsersController < ApplicationController
	before_action :user_info, except: [:new, :create]
	skip_before_action :require_login, only: [:new, :create]

	def new
	# render form to register/create user
	end

	def create
	# submitted form to create new user 
		# p params, "INSIDE USER CREATE WITH PARAMS"
		@user = User.create(user_params)
		# respond_to do |format|
			if @user.valid?
				flash[:errors] = ["You have successfully registered, please log in."]
				UserMailer.welcome_email(user: @user).deliver_now
				# format.html { redirect_to(@user, notice: 'User was successfully created.') }
				# format.json { render json: @user, status: :created, location: @user }
				return redirect_to root_path
			else
				flash[:errors] = @user.errors.full_messages
				# format.html { render action: 'new' }
				# format.json { render json: @user.errors, status: :unprocessable_entity }
				return redirect_to root_path
			end
		# end
	end

	# def show
	# # render show page template
	# 	@this_user = User.find_by(id: params[:id])
		
	# end

	def edit
	# pull user info and display form template
		@this_user = User.find_by(id: params[:id])
	end

	def update
		@this_user = User.find_by(id: params[:id])
		@this_user.update(user_params)
		if @this_user.valid?
			return redirect_to events_path #show page
		end

		flash[:errors] = @this_user.errors.full_messages
		return redirect_to edit_user_path(@this_user.id)
	end

	# def destroy
	# # pull user info to delete from database
	# 	@this_user = User.find_by(id: params[:id])
	# 	# p @this_user, "INSIDE DESTROY METHOD WITH USER"
	# 	@this_user.destroy
	# 	session[:id] = nil
	# 	return redirect_to new_user_path
	# end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
		end

		def user_info
			# p params[:id], "user_info with params[:id]"
			# p session[:id], "user_info with session[:id]"
			# params[:id] will be in string format, session[:id] will already be integer format
			unless params[:id].to_i == session[:id]
				flash[:errors] = ["You can only edit your own profile."]
  				return redirect_to edit_user_path(session[:id])
  			end
		end



end