class UsersController < ApplicationController
	layout "two_column"
  def index
  	@users = User.all
  end
  def create

  	@user = User.new
  	User.create(first_name:params[:first_name].to_s, last_name:params[:last_name].to_s, favorite_language:params[:favorite_language].to_s)
  	redirect_to :back
  end

end
