
#while loops
# i = 0
# num = 5
# while i < num do
#    puts "Inside the loop i = #{i}"
#    i +=1
# end

# i = 0
# num = 5
# while i < num do
#   puts "Inside the loop i = #{i}"
#   i += 1  
#   break if i == 2  
# end

#for loops
# for i in 0..5 
#   puts "Value of local variable is #{i}" 
# end

# for i in 0..5 
#   puts "Value of local variable is #{i}" 
#   break if i == 2
# end



# for i in 0..5 
#   next if i == 2
#   puts "Value of local variable is #{i}"   
# end

# #methods
# def hello_world
#   puts "hello world"
# end
# hello_world


# def say_hello name1, name2
#   puts "hello, #{name1} and #{name2}"
# end
# say_hello "oscar", "eduardo" # => "hello, oscar and eduardo"

# def say_hello(name1, name2)
#   puts "hello, #{name1} and #{name2}"
# end
# say_hello("oscar", "eduardo") # => "hello, oscar and eduardo"

# def say_hello name1="oscar", name2="shane"
#   puts "hello, #{name1} and #{name2}"
# end
# say_hello "oscar"    # => "hello, oscar and shane"


# def say_hello name1="oscar", name2="shane"
#   "hello, #{name1} and #{name2}"
# end
# puts say_hello "oscar", "eduardo"   # => "hello, oscar and eduardo"


# def say_hello name1, name2
#   if name1.empty? or name2.empty?
#     return "Who are you?!"
#   end
#   # Doesn't reach the last line because we used return
#   "hello, #{name1} and #{name2}"
# end
# puts say_hello "", ""


