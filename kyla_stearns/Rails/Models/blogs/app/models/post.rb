class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages, dependent: :destroy #this will make sure that when a Post is destroyed, the attached messages are also destroyed
  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
end