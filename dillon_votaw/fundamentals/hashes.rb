hash_pipe = { hello: "goodbye", imsad: "justkidding", imalways: "sohappy", tobe: "alive" }

puts hash_pipe

hash_pipe.delete(:hello); puts hash_pipe

puts hash_pipe.empty?; puts hash_pipe.has_key?(:major_key)
puts hash_pipe.has_value?("justkidding")