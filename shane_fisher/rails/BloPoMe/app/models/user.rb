class User < ActiveRecord::Base
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, :email_address, presence: true, length: { minimum: 3 }
    validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

    has_many :owners
    has_many :owned_blogs, through: :owners, source: :blog

    has_many :posts
    has_many :posted_blogs, through: :posts, source: :blog

    has_many :messages
    has_many :posts, through: :messages
end
