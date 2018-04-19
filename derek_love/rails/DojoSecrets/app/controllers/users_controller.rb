class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :this_user, except: [:new, :create]

  def new
  end

  def create
    @user = User.create( new_user )
    if @user.valid?
      session[:user_id] = @user.id

      redirect_to new_session_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
  end

  def edit
  end
  
  def update
    @user = User.find(current_user)
    @user.update( new_user )
    if @user.valid?
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/#{@user.id}/edit"
    end
  end

  def destroy
    @user = User.find(current_user)
    @user.destroy

    redirect_to new_user_path
  end

  private
    def new_user
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

    def this_user
      if params[:id].to_i != current_user.id
        redirect_to user_path(current_user.id)
      end
    end
end
