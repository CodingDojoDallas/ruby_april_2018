class Message < ActiveRecord::Base
  belongs_to :user
  validates :user_id, :content, presence: true
  validates :content, length: { minimum: 10 }
end
