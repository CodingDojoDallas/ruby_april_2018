class Dojo < ActiveRecord::Base
    validates :name, :city, :state, presence: true
    validates :state, length: { is: 2 }
    has_many :ninjas
end
