class Comment < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  validates :content, :event, :user, presence: true
end
