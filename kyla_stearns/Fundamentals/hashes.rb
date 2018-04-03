# .delete(key) => deletes and returns a value associated with the key
names = {first_name: "Kyla", last_name: "Stearns"} 
p names.delete('last_name') 
# Definitely is not working how explained in 2.3.1 documentation :-/
p names # => {:first_name => "Kyla"}

# .empty? => returns true if hash contains no key-value pairs
names = {first_name: "Kyla", last_name: "Stearns"} 
p names.empty?

# .has_key?(key) => true or false
names = {first_name: "Kyla", last_name: "Stearns"} 
p names.has_key?('fav_color')

# .has_value?(value) => true or false
names = {first_name: "Kyla", last_name: "Stearns"} 
p names.has_value?('kyla')
p names.has_value?('Kyla')