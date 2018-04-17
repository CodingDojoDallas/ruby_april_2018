class Dojo < ActiveRecord::Base
    has_many :students
    validates :branch, presence: true, length: { minimum: 2 }
    validates :street, presence: true, length: { minimum: 2 }
    validates :city, presence: true, length: { minimum: 2 }
    validates :state, presence: true, length: { maximum: 2 }
end
