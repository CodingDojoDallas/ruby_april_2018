class SecretsController < ApplicationController
  def index
  end

  def new
    @secrets = Secret.all
  end

  def create
    @secret=Secret.create(content: params[:Content], user_id: current_user.id)
    redirect_to :back
  end

  def destroy
    Secret.find(params[:id]).destroy
    redirect_to :back
  end

  def like
    @secret = Secret.find(params[:id])
    if params[:like] == "Unlike" 
      @secret.users.delete(current_user)

    else params[:like] == "Like"
      @secret.users << current_user
    end
    redirect_to :back
  end
end
