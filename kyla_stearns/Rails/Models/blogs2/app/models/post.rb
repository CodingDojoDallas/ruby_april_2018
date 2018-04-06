class Post < ActiveRecord::Base
  belongs_to :blog, required: true, dependent: :destroy
  belongs_to :user, required: true, dependent: :destroy
  
  has_many :messages
  has_many :comments, as: :commentable

  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
  validates :content, length: { minimum: 15 }
end
