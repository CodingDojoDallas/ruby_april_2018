class Course < ActiveRecord::Base
	has_many :signups
	has_many :students, through: :signups
end
