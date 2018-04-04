# //1//
# (1..255).each { |i| print i, " " }

#//2//
# puts (1..255).find_all { |i| i % 2 == 1 }.to_s

#//3//
# sum = 0
# for i in 0..255
# 	sum += i
# 	puts "New number: #{i} Sum #{sum}"
# end

#//4//
# x = [1,3,5,7,9,13]

# for i in 0..x.length-1
# 	puts x[i]
# end

#//5//
# def find_max(arr)
# 	arr.sort!
# 	return arr[arr.length-1]
# end

# puts find_max([-1,-3,5,-7,-9,-13])

#//6//
# def get_average(arr)
# 	sum = 0
# 	for i in 0..arr.length-1
# 		sum += arr[i] 
# 	end
# 	return sum/arr.length
# end

# puts get_average([2,10,3])

# //7//
# def odd_array
# 	y = []
# 	y = (1..255).find_all { |i| i.odd? } # DOPE 
# 	return y
# end

# puts odd_array

# #//8//
# def greater_than(arr, y)
# 	sum = arr.find_all { |i| i > y }.length #damn so clean (dont forget last evaluation is returned)
# end
# puts greater_than([1,3,5,7,9], 3)	

#//9//
# def square_city(arr)
# 	arr.collect { |i| i*i }
# end

# puts square_city([1,5,10,-2])

#//10//

# def no_negatives(arr)
# 	arr.collect { |i| if i < 0 then 0 else i end } #this works because we are forming a new array with the return from the block function
# end

# puts no_negatives([3,5,-23,5,-66])

#//11//

# def maxminavg(arr)
# 	sum = 0
# 	arr.sort!
# 	min = arr[0]
# 	max = arr[arr.length-1]
# 	for i in 0..arr.length-1
# 		sum += arr[i]
# 	end
# 	avg = sum/arr.length
# 	return { min: min, max: max, avg: avg }
# end

# puts maxminavg([-2,100,5,5,5])

#//12//

# def shiftur(arr) #have to use a for loop bc we wanna look at indexes
# 	for i in 0..arr.length-1
# 		arr[i] = arr[i+1]
# 		if arr[i] == nil then arr[i] = 0 end
# 	end
# 	return arr
# end

# puts shiftur([2,5,7,9])

#//13//
# def numtostring(arr)
# 	arr.collect { |i| if i.is_a? Numeric then "w00t" else i end }
# end

# puts numtostring(["666",1,2,3,"666"])

