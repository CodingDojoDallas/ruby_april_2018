class Join < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  validates :event, :user, presence: true
end
