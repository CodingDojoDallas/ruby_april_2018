class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render "new"
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def edit
    @user = User.find(params[:id]).name
    render "edit"
  end

  def create
    @user = User.create(name: params[:name])
    redirect_to "/users"
  end

  def total
    @user_total = User.count
    render text: "There are #{@user_total} users"
  end
end
