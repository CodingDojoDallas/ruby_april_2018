class Student < ActiveRecord::Base
  belongs_to :dojo
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  
  validates :first_name, :last_name, :email, :dojo_id, presence: true
  validates :first_name, :last_name, length: { minimum: 3, maximum: 50}
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
