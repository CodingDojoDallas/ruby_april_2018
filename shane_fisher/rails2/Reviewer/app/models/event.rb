class Event < ActiveRecord::Base
    validates :name, :date, :city, :state, presence: true
    validates :name, length: {maximum: 40}
    validates :city, length: {minimum: 3}
    validates :state, length: {is: 2}
    validates :date, date: { after: Date.today}
    belongs_to :user
    has_many :signups, dependent: :destroy
    has_many :joiners, through: :signups, source: :user
    has_many :comments, dependent: :destroy
end
