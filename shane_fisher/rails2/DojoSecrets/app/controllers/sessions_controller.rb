class SessionsController < ApplicationController
    def new
        # render login page
    end
    def create
      @user = User.find_by(email: params[:Email])
        # Log User In
      if @user
        if @user.authenticate(params[:Password])
            id = @user.id
            session[:user_id] = @user.id
            redirect_to user_path(:id => id)
        else
            flash[:errors] = ["Invalid Combination"]
            redirect_to :back
        end
      else
        flash[:errors] = ["Invalid Combination"]
        redirect_to '/sessions/new'
      end
    end
    def destroy
        # Log User out
        session[:user_id] = nil
        redirect_to '/sessions/new'
    end
end