class AppleTree
	# getter and setter
	attr_accessor :age
	# getter only
	attr_reader :height, :count
	# setter only
	# attr_writer
	def initialize
		@age = 0
		@height = 5
		@count = 0
	end

	def year_gone_by
		@age += 1
		@height *= 1.1 # 10% increase
		@count += 2 if @age.between?(3,11)   # > 3 and < 10
		return "#{@age}, #{@height}, #{@count}"
	end

	def pick_apples
		@count = 0
		return @count
	end

end