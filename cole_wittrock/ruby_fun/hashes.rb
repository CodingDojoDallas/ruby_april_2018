our_hash = {first_name: "Coding", last_name: "Dojo"}

p our_hash
p our_hash.empty?
p our_hash.has_key?(:last_name)
p our_hash.has_value?("Dojo")

p our_hash.delete(:last_name)
p our_hash
