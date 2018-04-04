# x = [3,5,1,2,7,9,8,13,25,32]
# def one(arr)
# 	sum = 0
# 	arr.each {|i| sum += i }
# 	print sum, "\n"
# 	return arr.find_all { |i| i > 10 }
# end	

# puts one(x)
# ~~~~

# x = ["John", "RageKage", "Oliver", "Tory", "Matthias", "Christophe"]

# def two(arr)
# 	arr.shuffle.each { |i| print i, "--"}
# 	return arr.find_all { |i| i.length > 5 }
# end

# puts two(x)
# ~~~~

# x = ('a'..'z').to_a # NICE NICE NICE

# def three(arr)
# 	arr.shuffle!
# 	puts arr.last; puts arr.first;
# 	if arr.first == 'a' || arr.first == 'e' || arr.first == 'i' || arr.first == 'o' || arr.first == 'u'
# 		puts "ohhh yeahhhhhhhh hHYESSS YES YES YES"
# 	end
# end

# three(x)
# ~~~~~

# x = []
# for i in 0..9
# 	x.push(rand(55..100))
# end
# puts x.to_s
# ~~~~~~

# x = []
# for i in 0..9
# 	x.push(rand(55..100))
# end
# x.sort!
# puts x.to_s; puts x.first; puts x.last
# ~~~~~~~

# x = ""
# for i in 0..4
# 	x << (65+rand(26)).chr
# end
# puts x
# ~~~~~~~~
# arr = []
# for i in 0..9
# 	x = ""
# 	for i in 0..4
# 		x << (65+rand(26)).chr
# 	end
# 	arr.push(x)
# end
# puts arr.to_s
