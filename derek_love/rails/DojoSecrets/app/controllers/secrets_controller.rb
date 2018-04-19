class SecretsController < ApplicationController

    def index
        @secrets = Secret.eager_load(:user).all
    end

    def create
        @secret = Secret.create( new_secret )
        if @secret.valid?
            redirect_to user_path(current_user)
        else
            flash[:errors] = @secret.errors.full_messages
            redirect_to user_path(current_user)
        end
    end

    def destroy
        @secret = Secret.find_by(id: params[:id])
        if current_user == @secret.user
            @secret.destroy
            redirect_to user_path(current_user)
        else
            redirect_to secrets_path
        end
    end

    private
        def new_secret
            params.require(:secret).permit(:content, :user_id)
        end
end
