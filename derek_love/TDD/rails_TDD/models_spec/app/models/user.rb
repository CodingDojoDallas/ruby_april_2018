class User < ActiveRecord::Base

    validates :first_name, :last_name, presence: true
    
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
    validates :email, uniqueness: true, format: { with: EMAIL_REGEX }
end
