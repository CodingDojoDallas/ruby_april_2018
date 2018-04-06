class Message < ActiveRecord::Base
  belongs_to :post, required: true, dependent: :destroy
  belongs_to :user, required: true, dependent: :destroy

  has_many :comments, as: :commentable

  validates :message, presence: true, length: { minimum: 15 }
end
