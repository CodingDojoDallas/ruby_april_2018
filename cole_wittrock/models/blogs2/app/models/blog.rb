class Blog < ActiveRecord::Base
	has_many :posts
	has_many :owners
	has_many :users, through: :owners
	has_many :messages, through: :posts
	# Blog.joins(:users, :messages, :posts).where("users.first_name = 'steve'")
	has_many :comments, as: :commentable
end
