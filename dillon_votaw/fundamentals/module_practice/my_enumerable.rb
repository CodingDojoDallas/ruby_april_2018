module MyEnumerable
  def my_each
  	for i in 0..self.length-1
  		yield self[i]
  	end
  end
end
class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40
