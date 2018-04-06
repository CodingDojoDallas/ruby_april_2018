class Blog < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :name, length: { minimum: 5 }
	validates :description, length: { minimum: 15 }
end