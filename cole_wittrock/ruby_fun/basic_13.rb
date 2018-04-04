a = (1..225)

a.each { |i| p i if i % 2 == 0 }

a.each { |i| p i if i.odd? }





total = 0 

a.each do |i|
	total += i-1
	p "number: #{i}, sum: #{total}"
end 

x = [1,3,5,7,9,13]

x.each { |i| p i}


p x.max

total = 0
x.each do |i|
	total += i
	p i
end
	p total / x.length


y = (1..255)
arr = []
y.each { |i| arr.push(i) if i.odd?}

p arr


z = 4
arr = []
x.each { |i| arr.push(i) if i > z}
p arr.size

squared
for i in x
	p i * i
end

	p x.map { |i| i < 0? 0 : i}
x = [2,3,5,7,3,13]
def max_min_average arr
	arr.map! { |i| i < 0? 0 : i}
	p arr.max
	p arr.min
	total = 0
	arr.each do |i|
		total += i
	end
	p total / arr.length

end

max_min_average(x)


shifting = x.shift
p shifting

p x.push(shifting)

y = [3,4,6,-8,9,-3]
p y.map! { |i| i < 0? 'dojo' : i}

