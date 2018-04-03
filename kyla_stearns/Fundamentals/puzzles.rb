# 1
def info arr
	sum = 0
	arr.each { |x| sum = sum + x }
	p "Sum: #{sum}"
	new_arr = []
	arr.find_all { |i| new_arr.push(i) if i > 10 }
	p "Above 10: #{new_arr}"
end
info [3,5,1,2,7,9,8,13,25,32]

# 2 
names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
names.shuffle.each { |elem| p elem }
long_names = []
names.find_all { |long| long_names.push(long) if long.length > 5 }
p long_names

# 3
x = ('a'..'z').to_a
x.shuffle!
p x, x[-1], x[0]
can also say x.last and x.first
vowels = ['a','e','i','o','u']
vowels.each { |i| p "It's a vowel" if i == x[0] }

# 4
random = []
for i in 0..9
	random.push(rand(55..100))
end
p random

# 5
random = []
for i in 0..9
	random.push(rand(55..100))
end
random.sort!
p random, random.min, random.max

# 6
string = ''
for i in 0..4
	string += (65+rand(26)).chr
end
p string

# 7
random = []
for i in 0..9
	string = ''
	for x in 0..4
		string += (65+rand(26)).chr
	end
	random.push(string)
end
p random