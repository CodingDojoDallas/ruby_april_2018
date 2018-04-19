class Project
	attr_accessor :name, :description

	def elevator_pitch
		"#{@name}, #{@description}"
	end
end