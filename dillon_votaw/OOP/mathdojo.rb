class MethDojo
	attr_accessor :result
	def initialize
		@result = 0
	end
	def add *params
		params.each do |i| 
			if i.is_a? Array
				@result += i.reduce(:+)
			else
				@result += i 
			end
		
		end
		self
	end
	def subtract *params
		params.each do |i|
			if i.is_a? Array
				@result -= i.reduce(:+)
			else
				@result -= i
			end
		end
		self
	end
end

puts challenge1 = MethDojo.new.add(2).add([2, 3], 5).subtract(3, 2).result

puts challenge2 = MethDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result


# def splatting *params
#  params
# end
# puts splatting(1).inspect # => [1]
# puts splatting(1, 2, 3, 4, 5).inspect # => [1, 2, 3, 4, 5]
# puts splatting([1, 2, 3], 4, 5).inspect 
# => All the arguments are condensed into a single array.