class UsersController < ApplicationController
  def index

  	return render json: User.all
  end
  def new
  	return render '/users/create'
  	
  end
  def create
  	p "did it work?", user_params
  	@user = User.create(user_params)
  	redirect_to "/users"
  end
  def show

  	return render json: User.find(params[:id])
  	
  end
  def total
  	return render json: User.all.count
  	
  end
  def edit
  	@user = User.find(params[:id])
  	return render 'users/update'
  	
  end
  def update
  	p "is this working", user_params
  	@update = User.update(user_params)
  	return render test: "udpated the user"

  	
  end
  private
  	def user_params
  		params.require(:user).permit(:first_name, :last_name)
  		
  	end
end
