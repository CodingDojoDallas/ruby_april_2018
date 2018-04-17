class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :messages

  has_many :comments, as: :commentable

  validates :user, :blog, presence: true
  validates :title, presence: true, length: { minimum: 2 }
  validates :content, presence: true, length: { minimum: 2 }
end
