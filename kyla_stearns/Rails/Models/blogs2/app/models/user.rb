class User < ActiveRecord::Base
	has_many :owners
	has_many :blogs, through: :owners
	has_many :posts
	has_many :messages

	has_many :comments, as: :commentable

	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
	validates :first_name, :last_name, :email, presence: true, length: { minimum: 3 }
	validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

end
