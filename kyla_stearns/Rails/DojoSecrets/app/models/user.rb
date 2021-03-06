class User < ActiveRecord::Base
  has_many :secrets, dependent: :destroy # secrets user posts
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret # secrets user likes
  
  # has its own built-in validations including presence: true
  has_secure_password   
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  # usually can use before_save but since my regex doesn't allow for caps, this has to run before validation
  before_validation :downcase_fields  
  
  validates :name, :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  private 
	def downcase_fields
	  self.email.downcase!
	end
end
