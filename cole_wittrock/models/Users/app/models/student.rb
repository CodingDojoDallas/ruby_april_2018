class Student < ActiveRecord::Base
	has_many :signups
  	has_many :courses, through: :signups
end
