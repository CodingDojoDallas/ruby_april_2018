class PostsController < ApplicationController
  layout "three_column"

  def index
    @posts = Post.all.includes(:user)
    @users = User.all
    render "index"
  end

  def create
    @post = Post.create( new_post )
    if @post.valid?
      redirect_to "/posts"
    elsif @post.errors
      flash[:errors] = @post.errors.full_messages
      redirect_to "/posts"
    end
  end

  private
    def new_post
      params.require(:post).permit(:title, :content, :user_id)
    end
end
