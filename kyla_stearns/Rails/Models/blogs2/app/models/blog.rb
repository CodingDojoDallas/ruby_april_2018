class Blog < ActiveRecord::Base
	has_many :owners
	has_many :users, through: :owners
	has_many :posts

	has_many :comments, as: :commentable

	validates :name, :description, presence: true
	validates :name, length: { minimum: 5 }
	validates :description, length: { minimum: 15 }
end