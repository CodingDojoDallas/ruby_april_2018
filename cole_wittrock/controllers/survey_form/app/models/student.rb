class Student < ActiveRecord::Base
	validates :name, :dojo, :language, presence: true
end
