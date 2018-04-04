class MathDojo
  attr_accessor :num

  def initialize
  	@num = 0
  end

  def add *num1
  	for element in num1
	  	if element.is_a?(Fixnum)
	  		@num += element
	  	else
	  		element.each_index { |x| @num += element[x] } 
	  	end
	end
	self
  end

  def subtract *num1
  	for element in num1
	  	if element.is_a?(Fixnum)
	  		@num -= element
	  	else
	  		element.each_index { |x| @num -= element[x] } 
	  	end
	end
	self
  end

  def result
  	p @num
  	self
  end

end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
