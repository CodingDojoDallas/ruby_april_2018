class Project
	attr_accessor :name, :desc
	def initialize(name, desc)
		@name = name
		@desc = desc
	end
	def elevator_pitch
		puts "i would love nothing more than to leave this elevator. #{@desc}"
	end
end

project1 = Project.new("Cool shit", "Very cool")
puts project1.name
project1.elevator_pitch

