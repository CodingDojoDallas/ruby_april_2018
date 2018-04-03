# Print 1-255
p (1..255).to_a

# Print odd numbers between 1-255
(1..255).to_a.select { |elem| p elem if elem.odd? } 

# Print Sum
def print_sum
	sum = 0
	for i in (1..255)
		p "Number: #{i} and Sum: #{sum = sum + i}"
	end
end
print_sum

# Iterating through an array
x = [1,3,5,7,9,13]
x.each { |i| p i }

# Find Max
def find_max arr
	p arr.max 
end
find_max [2,4,8,1,99]

# Get Average
def avg arr
	# to_f will account for uneven division
	p arr.reduce(:+).to_f / arr.size
end
avg [2,10,3]

# Array with odd numbers
(1..255).to_a { |i| y = y.push(i) p y i.odd? }
y = []
(1..255).to_a.select { |elem| y.push(elem) if elem.odd? }
p y

# Greater than Y
def greater arr, y 
	new = []
	arr.select { |i| new.push(i) if i > y }
	p new
end
greater [1,3,5,7], 3

# Square the values
def square arr
	y = []
	arr.select { |i| y.push(i*i) }
	p y
end
square [1,5,10,-2]

# Eliminate negatives
def eliminate arr
	arr.each_index { |i| arr[i] = 0 if arr[i] < 0}
	p arr
end
eliminate [1,5,10,-2]

# Max, Min, and Average
def hash arr
	arr_hash =  {max: arr.max, min: arr.min, avg: arr.reduce(:+).to_f / arr.size }
	p arr_hash
end
hash [1,5,10,-2]

# Shifting
def shift arr
	arr.shift
	arr.push(0)
	p arr
end
shift [1,5,10,7,-2]

# OR
def shift arr
	arr.rotate!
	p arr
end
shift [1,5,10,7,-2]

# Number to String
def string arr
	arr.each_index { |i| arr[i] = "Dojo" if arr[i] < 0}
	p arr
end
string [-1,-3,2]
