class Dojo < ActiveRecord::Base
	#this will make sure that when a Dojo is destroyed, the attached students are also destroyed
	has_many :students, dependent: :destroy
	validates :branch, :street, :city, :state, presence: true
	validates :state, length: { is: 2 }
	validates :branch, :street, :city, length: { minimum: 3, maximum: 50}
end
