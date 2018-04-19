class Secret < ActiveRecord::Base
  belongs_to :user, required: true

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  
  validates :content, presence: true, length: { minimum: 2 }
end
