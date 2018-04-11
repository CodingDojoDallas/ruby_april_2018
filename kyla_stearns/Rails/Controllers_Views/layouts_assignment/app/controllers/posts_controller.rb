class PostsController < ApplicationController
	layout "three_column"
	# could also say: render layout: "three_column" in a specific method or use ONLY/EXCEPT
	def index
		# will automatically go into views/posts and look for 'index' file to render
		@all_posts = Post.all
		@all_users = User.all
		# @all_posts.each do |post|
		# 	p post.user.first_name, post.user.last_name
		# end
	end

	def new
		@new_post = Post.create(post_params)
		redirect_to posts_path
	end

	private
		def post_params
			params.require(:post).permit(:title, :content, :user_id)
		end
	
end