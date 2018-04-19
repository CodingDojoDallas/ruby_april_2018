class Event < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :joins, dependent: :destroy # had to define that it has many joins first before the relationships
  has_many :users_joined, through: :joins, source: :user

  validates :name, :date, :city, :state, :user, presence: true
  validate :valid_date

  private 
  	def valid_date
      errors.add(:date, "can't be in the past") unless date.future?
  	end
end
    # can also say 
    # if self.date < Date.today
    #   errors.add(:date, "can't be in the past")
    # end