class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new( new_user )
    if @user.save
      redirect_to "/users/#{@user.id}"
    else
      flash[:notice] = [@user.errors.full_messages]
      redirect_to new_user_path
    end
  end

  def show
    @user = User.last
  end

  private
    def new_user
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end
