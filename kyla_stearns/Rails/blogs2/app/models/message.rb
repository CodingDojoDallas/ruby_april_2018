class Message < ActiveRecord::Base
  belongs_to :post, required: true, dependent: :destroy
  belongs_to :user, required: true, dependent: :destroy

  validates :message, presence: true, length: { minimum: 15 }
end
