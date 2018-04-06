class Blog < ActiveRecord::Base
	has_many :owners
	has_many :users, through: :owners
	has_many :posts, required: true

	validates :name, :description, presence: true
	validates :name, length: { minimum: 5 }
	validates :description, length: { minimum: 15 }
end