module MyEnumerable
  def my_each
    for x in 0...self.length
    	# yield is telling the function to look at the block defined and run it
    	yield self[x]
    end
  end
end

class Array
   include MyEnumerable
end

[1,2,3,4].my_each { |i| p i } # => 1 2 3 4
[1,2,3,4].my_each { |i| p i*10 } # => 10 20 30 40