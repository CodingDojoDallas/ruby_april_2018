class Post < ActiveRecord::Base
  belongs_to :user, required: true

  validates :title, presence: true, length: { minimum: 2 }
  validates :content, presence: true, length: { minimum: 2 }
end
