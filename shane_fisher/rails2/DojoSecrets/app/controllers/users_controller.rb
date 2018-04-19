class UsersController < ApplicationController
  def index
  end

  def show

  end

  def create
    @user = User.create(name: params[:Name], email: params[:Email], password: params[:Password], password_confirmation:params[:Password_Confirmation])
    if @user.valid?
      redirect_to '/sessions/new'
    else
    messages = []
    @user.errors.full_messages.each { |message| messages << message }
    flash[:user_errors] = messages
    redirect_to :back
    end
  end

  def edit

    render 'edit'
  end

  def update
    @user = User.find_by(id: current_user.id)
    @user.update(name: params[:Name], email: params[:Email], password: params[:Password])
    if @user.valid?
      flash[:success] = "User successfully updated " + @user.name
      redirect_to edit_user_path
    else
      messages = []
      @user.errors.full_messages.each { |message| messages << message }
      flash[:user_errors] = messages
      redirect_to :back
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_user_path
  end

end
