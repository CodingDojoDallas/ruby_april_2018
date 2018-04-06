class Message < ActiveRecord::Base
  validates :author, :message, presence: true, length: { minimum: 3 }

  belongs_to :post
  belongs_to :user
end
