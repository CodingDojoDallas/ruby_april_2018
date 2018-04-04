arr = ['a', 'b', 'c', 'd', 'e', 'f']

p arr.delete('b')


p arr
p arr.reverse

a = [ 11, 22, 44, 33 ]

p a.fetch(4, 'cat')
p a.fetch(1)
p a.fetch(-1)

p a.fetch(100) { |i| puts "#{i} is out of bounds"}


p a.length


p a.sort

p arr.shuffle

p a.join('-')

p arr.insert(-1, 99, 1,2,3)

p arr.values_at(-1, -3, 5)