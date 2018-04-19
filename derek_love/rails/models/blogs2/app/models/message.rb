class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  has_many :comments, as: :commentable

  validates :user, :post, presence: true
  validates :author, presence: true, length: { minimum: 2 }
  validates :message, presence: true, length: { minimum: 2 }
end
