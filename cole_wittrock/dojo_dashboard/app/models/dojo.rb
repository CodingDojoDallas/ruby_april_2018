class Dojo < ActiveRecord::Base
	has_many :students
	validates :branch, :street, :city, :state, presence: true
end
