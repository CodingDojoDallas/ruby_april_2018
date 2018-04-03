# 1
# def numbers
    # (1..255).each { |i| p i }
# end

# 2
# def odd_numbers
    # (1..255).select { |i| p i if i.odd? }
# end

# 3
# def num_and_sum
    #  sum = 0

    # (0..255).each { |i| sum += i; p "New number: #{i} Sum: #{sum}"}
# end

# 4
# def array arr
    # arr.each { |i| p i }
# end
# array [1,3,7,14,57,19,43]

# 5
# def array_max arr
    # p arr.max
# end
# array [1,3,-7,14,57,19,43]

# 6
# def average arr
#     sum = 0
#     arr.each { |i| sum += i }
#     p sum / arr.length
# end
# average [1,2,3,24,-20, 255]

#7
# def odd_array arr
#     p arr.select { |i| i.odd? }
# end
# odd_array [1,2,3,4,5]

#8
# def greater_than_y arr, y
#     num = 0;
#     arr.select { |i| num += 1 if i > y }
#     p num;
# end
# greater_than_y [1,3,4,5,6], 3

#9
# def squares arr
#     p arr.collect { |i| i*i }
# end
# squares [-2,2,3,25,10]

#10
# def no_negatives arr
#     p arr.map { |i| i < 0 ? 0 : i }
# end
# no_negatives [-2,34,5,-20,4]

#11
# def min_max_avg arr
#     sum = 0
#     arr.each { |i| sum += i }
#     vals = {}
#     vals[:min] = arr.min
#     vals[:max] = arr.max
#     vals[:avg] = sum / arr.length
#     p vals
# end
# min_max_avg [1,2,3,4,5]

#12
# def shift arr
#     arr.shift
#     p arr
# end
# shift [1,2,3,4,5]

#13
# def num_to_str arr
#     p arr.map { |i| i < 0 ? 'Dojo' : i}
# end
# num_to_str [-2,-4,2,-3,5]
