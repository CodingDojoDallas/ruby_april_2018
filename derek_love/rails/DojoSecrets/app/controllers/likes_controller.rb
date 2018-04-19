class LikesController < ApplicationController
  def create
    @like = Like.create( new_like )
    redirect_to secrets_path
  end

  def destroy
    @like = Like.find_by(user_id: current_user)
    if current_user == @like.user_id
      @like.destroy
      redirect_to secrets_path
    end
  end

  private
    def new_like
      params.require(:like).permit(:user_id, :secret_id)
    end
end
