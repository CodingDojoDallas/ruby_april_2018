class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password
  validates :password, length: {minimum: 8, allow_blank: true }, on: :create
  validates :first_name, :last_name, :city, :state, presence: true 
  validates :email, uniqueness: true, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :city, length: {minimum: 3}
  validates :state, length: {is: 2}
  has_many :events, dependent: :destroy
  has_many :signups, dependent: :destroy
  has_many :joined_events, through: :signups, source: :events
  has_many :comments, dependent: :destroy
end
