x = [3,5,1,2,7,9,8,13,25,32]

def total arr 
	total = 0
	arr.each do |i|
		total += i
	end
	p total
	arr.reject! { |i| i < 10 }
	p arr
end

# total(x)

people = ["John", "KB", "Oliver", "Cory", "Matthew", "Chistopher"]

def shuffle arr
	arr.shuffle
	arr.each do |i|
		if i.length > 5
		 p i
		 end
	end
	arr.each do |i|
		p i
	end
	# p arr.reject! {|i| i.length < 5}
end
# shuffle(people)

alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

def task arr
	arr.shuffle!
	p arr
	if arr[0] == 'a' || arr[0] == 'u' || arr[0] == 'o' || arr[0] == 'e' || arr[0] == 'i'		
		p 'hello'
	end
	# arr.each do |i|
	# 	if i == 'a' || i == 'u' || i == 'o' || i == 'e' || i == 'i'
	# 		'hello'
	# 	end
	# end
end
# task(alph)

array = []
def random_arr arr
	# total = 10
	for i in 0..10
		arr.push(rand(55..100))
	end
	p arr.sort
	p arr.min
	p arr.max
end

random_arr([])

def random_str str

	for i in 0..5
		str += (65+rand(26)).chr
	end
	p str
end
# random_str("")


def ok_ok val
	str = ""
	for	j in 0..10	
		for i in 0..5
			str += (65+rand(26)).chr
		end
		val.push(str)
		str = ""
	end
		p val


	
end
ok_ok([])
