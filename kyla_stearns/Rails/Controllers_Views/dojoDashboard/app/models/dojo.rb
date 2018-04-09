class Dojo < ActiveRecord::Base
	validates :branch, :street, :city, :state, presence: true
	validates :state, length: { is: 2 }
	validates :branch, :street, :city, length: { minimum: 3, maximum: 50}
end
