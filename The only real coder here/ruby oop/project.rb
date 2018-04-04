class Project
	def initialize(name, description)
		@project_name = name
		@project_description = description
	end
	def elevator_pitch
		puts "#{@project_name}, #{@project_description}"
	end
	def project_name
		@project_name
	end
end

project1 = Project.new("Project 1", "Description 1")
puts project1.project_name
project1.elevator_pitch