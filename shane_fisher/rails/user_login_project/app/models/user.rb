class User < ActiveRecord::Base
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, :email_address, :age, presence: true
    validates :first_name, :last_name, length: { in: 2..30 }
    validates :age, numericality: { greater_than: 9, less_than: 150 }
    validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
