class UserController < ApplicationController

  def index
    render json: User.all
  end

  def new
    render 'new'
  end

  def show
    id = params[:id]
    render json: User.find(id)
  end

  def edit
    id = params[:id]
    @user = User.find(id)
    puts @user.name
    render 'edit'
  end

  def submit
    @user = User.create( name: params[:name])
    redirect_to '/users'
  end

  def total
    render json: User.all.count('name')
  end
end
