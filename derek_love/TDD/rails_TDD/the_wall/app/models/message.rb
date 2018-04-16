class Message < ActiveRecord::Base
  belongs_to :user, required: true

  validates :content, presence: true, length: { minimum: 10 }
end
