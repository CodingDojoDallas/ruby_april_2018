class SecretsController < ApplicationController
	def index
		# @secrets = Secret.all
		# THIS WILL PULL IN YOUR USER DATA WITH THE SECRETS SO THAT YOU DONT HAVE FOR-LOOP IN HTML
		@secrets = Secret.eager_load(:user).all
	end

	def create
		@secret = Secret.create(secret_params)
		if @secret.valid?
			return redirect_to user_path(params[:secret][:user_id])
		end

		flash[:errors] = @secret.errors.full_messages
		return redirect_to user_path(params[:secret][:user_id])
	end

	def destroy
		@this_secret = Secret.find_by(id: params[:id])
		if current_user == @this_secret.user
		# p @this_secret, "INSIDE DESTROY METHOD WITH secret"
			@this_secret.destroy
			return redirect_to user_path(session[:id])
		else
			flash[:errors] = ["That is not your secret to destroy."]
			return redirect_to secrets_path
		end
	end

	private
		def secret_params
			params.require(:secret).permit(:content, :user_id)
		end
end