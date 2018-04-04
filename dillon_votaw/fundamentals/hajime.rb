# /// PUTS ///
# 3.times { puts "~" }

# BEGIN {
# 	puts "this will run first"
# }

# END {
# 	puts "this will run last"
# }


# first_name = "shithead"
# last_name = "whatever"

# puts "Your name is "+first_name+" "+last_name
# puts "First name is #{first_name} and last name is #{last_name}"

# puts "lets do some \"internal quotes\" "


# /// STRINGS ///

# x = "fuck off"

# puts x
# puts x.length; puts x.class; puts x.capitalize; puts x.upcase; puts x.downcase;

# puts x[2]; puts x.include?("off"); #include? is case sensitive
# puts "off in it" if x.include? "off"

# x = "why, am, i, alive"
# y = ""
# puts x.split(",")
# puts "Y is empty" if y.empty? #use question mark functions along with if statements

#must attach bang (!) to string methods if want to alter value of original string

# /// CONDITIONALS ///

# x=2

# if x > 2
# 	puts "x greater than 2"
# elsif x < 2 and x > 0 
# 	puts "x is 1"
# else
# 	puts "idk"
# end
#parenthesis are optional, semicolons are optional

# x=5 

# puts "x is not 2" if x != 2
# puts "x is greater than 2" if x > 2 
# puts "x is not 2" unless x==2 #AWESOME

# $age = 2 #global variable
# age = 21 #local variable

# case age
# when 0 .. 2
# 	puts "bb"
# when 3 .. 6
# 	puts "lil bb"
# when 7 .. 12
# 	puts "child"
# when 13 .. 18
# 	puts "yoof"
# else
# 	puts "grown"
# end

# /// LOOPS ///
#while loop
# i = 0
# num = 5
# while i < num do
#    puts "Inside the loop i = #{i}"
#    i +=1
# end

#using break
# i = 0
# num = 5
# while i < num do
#   puts "Inside the loop i = #{i}"
#   i += 1  
#   break if i == 2  
# end


# for loop
# for i in 0..5 
#   puts "Value of local variable is #{i}" 
# end

# using next
# for i in 0..5 
#   next if i == 2
#   puts "Value of local variable is #{i}"   
# end


# /// METHODS ///

# def hello_world
# 	puts "goodbye world"
# end
# hello_world
						#nice

# def use_inputs(input1, input2)
# 	puts "fuckkk yeah #{input1} and #{input2}"
# end
# use_inputs("hey", "you")

# def say_hello name1="oscar", name2="shane"
#   "hello, #{name1} and #{name2}"
# end
# puts say_hello "oscar", "eduardo"   # => "hello, oscar and eduardo"
# ^ruby by default returns whatever was evaluated last

# /// ITERATORS ///


# puts ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # true

# ["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--

# puts (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
# puts (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]

# puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
# puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35

# puts (1..10).find_all { |i| i % 3 == 0 }.to_s # => [3, 6, 9]

# puts (1..10).reject { |i| i % 3 == 0 }.to_s # => [1, 2, 4, 5, 7, 8, 10]

# 5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10

# /// YIELD AND BLOCK STATEMENTS ///

# def test 
#   puts "You are in the method" 
#   yield # RUN THE BLOCK
#   puts "You are again back to the method" 
#   yield # 
# end 
# test { puts "You are in the block" } #in curly is a BLOCK


#check it out WE CAN PASS A PARAMETER TO THE BLOCK
# def test 
#   yield 5 
#   puts "You are in the method test" 
#   yield 100 
# end 
# test { |i| puts "You are in the block #{i}" }


#BELOW COOL AND IMPORTANT
# def square(num)
# 	puts "num is #{num}"
# 	puts "yield(num) has a value of #{yield(num)}"

# 	x = yield(num)
# 	puts "x is #{x}"

# 	y = yield(num)*x
# 	puts "y is #{y}"
# end

# square(5) {|i| i*i }





## DIFFERENT SYNTAX FOR ITERATORS
(1..200).each do |i|
	p i if i % 2 == 1
end





