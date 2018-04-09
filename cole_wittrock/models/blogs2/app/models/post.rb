class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :messages
  validates :title, :content, presence: true
  has_many :comments, as: :commentable
end
