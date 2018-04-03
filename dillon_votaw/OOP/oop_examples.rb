# class User
# 	def first_name=(val) # setter
# 		@first_name = val
# 	end
# 	def first_name #getter
# 		@first_name
# 	end
# 	attr_reader :last_name
# 	attr_writer :last_name
# end

# class User
# attr_accessor :first_name, :last_name #handles getter and setter (reader and writer)
# 	def initialize(f_name, l_name)
# 		@first_name = f_name
# 		@last_name = l_name
# 	end

# 	def full_name
#   		puts "I am #{@first_name} #{@last_name}"
#  	end

#  	def say_hello
#  		puts "ay"
#  	end

#  	def self.foo
#  		puts "this be a class method"
#  	end
# end

# nollid = User.new("nollid", "watov")

# nollid.full_name
# nollid.say_hello

# nollid.foo (doesn't work bc foo is a class method, not an instance method)
# User.foo

class CodingDojo 
  @@no_of_branches = 0
  def initialize(id, name, address) 
    @branch_id = id 
    @branch_name = name 
    @branch_address = address 
    @@no_of_branches += 1 
    puts "Created branch #{@@no_of_branches}"
  end
  def hello 
    puts "Hello CodingDojo!"
  end
  def display_all
    puts "Branch ID: #{@branch_id}"
    puts "Branch Name: #{@branch_name}" 
    puts "Branch Address: #{@branch_address}"
  end 
end 
# now using above class to create objects 
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
branch.display_all 
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
branch2.display_all


# class Fixnum
#   def who_am_i
#     puts self
#   end
# end
# class String
#   def who_am_i
#     puts self
#   end
# end
# 4.who_am_i # => 4
# 15.who_am_i # => 15
# "string".who_am_i # => "string"
# "hello_world".who_am_i # => "hello_world"

# class Mammal
#   def initialize
#     puts "I am alive"
#     self
#   end
#   def breath  
#     puts "Inhale and exhale"
#     self
#   end
  
#   def who_am_i
#     # printing the current object
#     puts self
#     self
#   end
# end
# my_mammal = Mammal.new # => "I am alive"
# my_mammal.who_am_i # => #<Mammal:0x007f9e86025dd8>
# my_mammal.who_am_i.breath 


class Mammal
  def breath  
    puts "Inhale and exhale"
  end
  
  def eat
    puts "Yum yum yum"
  end
end
class Human < Mammal # Human inherits from Mammal
  def subclass_method
    breath
  end
  def another_method
    eat
  end
end
person = Human.new
person.subclass_method
person.another_method

