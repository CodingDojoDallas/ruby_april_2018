class Dojo < ActiveRecord::Base
	#this will make sure that when a Dojo is destroyed, the attached ninjas are also destroyed
	has_many :ninjas, dependent: :destroy 
	validates :name, :city, :state, presence: true
	validates :state, length: { is: 2 }
end
