a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

def dis arr
	p "you have #{arr.length} names in the array" 
	for i in arr
		
		p "the name is #{i.fetch(:first_name)} #{i.fetch(:last_name)}"
		
	end
end
dis(names)

