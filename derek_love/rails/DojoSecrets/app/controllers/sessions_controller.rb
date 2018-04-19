class SessionsController < ApplicationController
    skip_before_action :require_login, except: [:destroy]

    def new
        # render login page
    end

    # log in user
    def create
        @user = User.find_by(email: params[:email])
        if @user
            if @user.authenticate(params[:password])
                session[:user_id] = @user.id
                redirect_to "/users/#{session[:user_id]}"
            else
                flash[:errors] = "Invalid email/password combination"
                redirect_to new_session_path
            end
        else
            flash[:errors] = "Invalid email/password combination"
            redirect_to new_session_path
        end
    end

    # log out user
    def destroy
        session.delete :user_id

        redirect_to new_session_path
    end
end
