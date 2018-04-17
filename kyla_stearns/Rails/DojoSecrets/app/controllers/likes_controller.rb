class LikesController < ApplicationController
  def create
  	# p params, "these are your likes params"
  	@like = Like.create(user_id: params[:like][:user_id], secret_id: params[:like][:secret_id])
  	redirect_to secrets_path
  end

  def destroy
  	# finds the like with the secret id we passed and the current user
    # p params[:id], "likes destroy with params id (secret_id)"
    # p session[:id], "likes destroy with session id"
  	@this_like = Like.find_by(secret_id: params[:id])
    if current_user == @this_like.user
  	  @this_like.destroy
  	  redirect_to secrets_path
    else
      flash[:errors] = ["You cannot remove another user's like"]
      return redirect_to secrets_path
    end
  end
end