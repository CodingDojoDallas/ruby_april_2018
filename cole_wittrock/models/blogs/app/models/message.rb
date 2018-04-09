class Message < ActiveRecord::Base
  belongs_to :post
  validates :author, :message, presence: true
  validates :message, length: {in: 15..100}
end
