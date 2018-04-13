class UsersController < ApplicationController
  layout "two_column"

  def index
    @users = User.all
    render "index"
  end

  def create
    @user = User.create( new_user )
    if @user.valid?
      redirect_to "/users"
    elsif @user.errors
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users"
    end
  end

  private
    def new_user
      params.require(:user).permit(:first_name, :last_name, :favorite_language)
    end
end
