#1
# def array_sum_n_such arr
#     sum = 0
#     arr.each { |i| sum += i }
#     p sum
    
#     p arr.select { |i| i > 10 }
# end
# array_sum_n_such [3,5,1,2,7,9,8,13,25,32]

#2
# def shuffle arr
#     arr.shuffle!
#     arr.each { |i| p i }
#     p arr.select { |i| i.length > 5 }
# end
# shuffle ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']

#3
# def alphabet
#     arr = ('a'..'z').to_a
#     vowels = ['a','e','i','o','u']
#     arr.shuffle!
#     p arr.last
#     p arr.first
#     vowels.each { |i| p "you dirty vowel" if i == arr.first }
# end
# alphabet

#4
# def random 
#     arr = []
#     (1..10).collect { arr.push(rand(55..100)) }
#     p arr
# end
# random

#5
# def random_sorted
#     arr = []
#     (1..10).collect { arr.push(rand(55..100)) }
#     arr.sort!
#     p arr, arr.min, arr.max
# end
# random_sorted

#6
# def random_str
#     str = ('a'..'z').to_a.shuffle[0,5].join
#     p str
# end
# random_str

#7
# def arr_random
#     arr = []
#     (1..10).collect { arr.push(('a'..'z').to_a.shuffle[0,5].join) }
#     p arr
# end
# arr_random

