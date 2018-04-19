class User < ActiveRecord::Base
  has_many :events, dependent: :destroy # events user created
  has_many :comments, dependent: :destroy # comments user created
  has_many :events_joined, through: :joins, source: :event # events user joined

  has_secure_password
  # bcrypt will already validate if password is blank, if confirmation matches, etc.
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  # usually can use before_save but since my regex doesn't allow for caps, this has to run before validation
  before_validation :downcase_fields  
  
  validates :first_name, :last_name, :email, :city, :state, presence: true
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :state, length: { is: 2 }
  validates :password, length: { minimum: 8, maximum: 15 }, on: :create

  private 
	def downcase_fields
	  self.email.downcase!
	end
end