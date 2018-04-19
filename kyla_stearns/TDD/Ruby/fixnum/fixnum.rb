module MyEnumerable
	
	def my_upto num
    	(self..num).each do |i|
      		yield i
  		end
	end 
# 	alternative way of doing it
 # 	def my_upto num
 #   		arr = Array(self..num)
 #   		p arr
 #    	arr.each do |i|
 #      		yield i
 # 		end
	# end

	def my_times
		for i in 1..self
			yield
		end
	end
# 	alternative way of doing it
 # 	def my_times
 # 		arr = Array(1..self)
 # 		for i in arr
 #   			yield
	# 	end 
	# end

end

class Fixnum
	include MyEnumerable
end

class String
	include MyEnumerable
end