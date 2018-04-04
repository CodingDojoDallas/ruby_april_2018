class Mathdojo
	def initialize
		@result = 0
	end
	def add *number
		for i in number
			if i.class == Array
				for a in i
					@result += a
				end
			else
				@result += i
			end
		end
		self
	end

	def subtract *number
		for i in number
			if i.class == Array
				for a in i
					@result -= a
				end
			else
				@result -= i
			end
		end
		self
	end

	def result
		puts @result
	end
end
Mathdojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
Mathdojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result