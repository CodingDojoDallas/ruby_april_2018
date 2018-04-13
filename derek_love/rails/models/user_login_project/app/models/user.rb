class User < ActiveRecord::Base
    validates :first_name, :last_name, :email, :age, presence: true
    validates_numericality_of :age, greater_than_or_equal_to: 10, less_than: 150
    validates :first_name, :last_name, length: { minimum: 2 }
end
