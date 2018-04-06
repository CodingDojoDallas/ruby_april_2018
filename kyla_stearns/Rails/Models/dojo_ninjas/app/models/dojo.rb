class Dojo < ActiveRecord::Base
	has_many :ninjas, dependent: :destroy #this will make sure that when a Dojo is destroyed, the attached ninjas are also destroyed
	validates :name, :city, :state, presence: true
	validates :state, length: { is: 2 }
end
