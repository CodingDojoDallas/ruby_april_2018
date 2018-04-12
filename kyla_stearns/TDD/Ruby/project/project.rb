class Project
	attr_accessor :name, :desc, :owner, :tasks
	def initialize name, desc, owner
		@name = name
		@desc = desc
		@owner = owner
		@tasks = []
		
	end

	def elevator_pitch
		# p self.name, 'in elevator pitch with name'
		"#{@name}, #{@desc}, #{@owner}" 
	end

	def add_tasks task
		@tasks << task
	end

	def tasks
		return @tasks
	end

	def print_tasks
		p @tasks
	end

end

# @project1 = Project.new('Project 1', 'description 1', 'John Doe') 
# @project2 = Project.new('Project 2', 'description 2', 'Jane Doe')
# @project1.add_tasks('Send Memo')
# @project1.print_tasks