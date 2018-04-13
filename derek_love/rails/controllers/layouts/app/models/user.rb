class User < ActiveRecord::Base
    has_many :posts

    validates :first_name, presence: true, length: { minimum: 2 }
    validates :last_name, presence: true, length: { minimum: 2 }
    validates :favorite_language, presence: true
end
