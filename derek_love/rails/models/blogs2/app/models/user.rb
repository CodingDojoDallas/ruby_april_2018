class User < ActiveRecord::Base
    has_many :owners
    has_many :blogs, through: :owners
    has_many :posts
    has_many :messages

    has_many :comments, as: :commentable

    validates :first_name, presence: true, length: { minimum: 2 }
    validates :last_name, presence: true, length: { minimum: 2 }
    validates :email, presence: true, length: { minimum: 2 }
end
