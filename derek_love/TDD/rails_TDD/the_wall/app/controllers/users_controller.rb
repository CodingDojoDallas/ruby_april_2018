class UsersController < ApplicationController
  def new
    render "new"
  end

  def create
    @user = User.create( new_user )
    @user_exists = User.find_by( new_user )
    if @user_exists
      redirect_to messages_path
      session[:user] = @user_exists.id
    elsif @user.valid?
      redirect_to messages_path
      session[:user] = @user.id
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def logout
    reset_session
  end

  private
    def new_user
      params.require(:user).permit(:username)
    end
end
