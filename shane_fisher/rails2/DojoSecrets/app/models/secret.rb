class Secret < ActiveRecord::Base
  validates :content, presence: true
  has_many :likes
  belongs_to :user
  has_many :users, through: :likes
end
