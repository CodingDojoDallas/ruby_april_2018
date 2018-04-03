a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]


def names (arr)
    puts "You have #{arr.count} names in the 'names' array"
    arr.each { |name| puts "The name is '#{name[:first_name]} #{name[:last_name]}'"}
end

names(names)