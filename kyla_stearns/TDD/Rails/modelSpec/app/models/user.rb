class User < ActiveRecord::Base
	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
	validates :first_name, :last_name, :email, presence: true
	validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	# validates_uniqueness_of :email
end
