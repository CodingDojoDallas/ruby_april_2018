class Message < ActiveRecord::Base
  belongs_to :post

  validates :author, :message, presence: true
  validates :message, length: { minimum: 15 }
end
