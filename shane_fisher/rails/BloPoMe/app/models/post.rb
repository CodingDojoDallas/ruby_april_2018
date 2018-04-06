class Post < ActiveRecord::Base
  validates :title, :content, presence: true, length: { minimum: 3 }
  
  belongs_to :blog
  belongs_to :user

  has_many :messages
  has_many :writers, through: :messages, source: :user

end
