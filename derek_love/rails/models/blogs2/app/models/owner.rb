class Owner < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog

  validates :user, :blog, presence: true
end
