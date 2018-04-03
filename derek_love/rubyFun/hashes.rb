hash_browns = { first_name: 'Coding', last_name: 'Dojo'}
hash_browns.delete(:last_name)
p hash_browns
p hash_browns.empty?
p hash_browns.has_key?(:first_name)
p hash_browns.has_value?('Dojo')