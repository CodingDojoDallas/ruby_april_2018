def print_all
	(1..255).to_a
end
print_all

def print_odd 
	(1..255).step(2).to_a
end
print_odd

def int_add
	sum = 0
	(0..255).each {|i| p sum+=i}
end
int_add

def interate
	[1,3,5,7,9,13].each {|i| puts i}
end
interate

def find_max
	p [1,3,5,7,9,13].max
end
find_max

def find_avg
	sum = 0
	arr = [1,3,5,7,9,13]
	p arr.reduce(:+)/arr.length
end
find_avg

def y_array
	y = (1..255).step(2).to_a
	p y
end
y_array

def grtr_than
	y = 3
	a = [1,3,6,9].each {|i| p i if i > y}
end
grtr_than