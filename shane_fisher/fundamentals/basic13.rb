# print 1-255

(1..255).each {|num| puts num}

# print odd between 1-255

(1..255).each { |num| puts num if num.odd?}

# print Sum

puts (1..255).reduce(:+)

# print Sum with output

sum = 0
(0..255).each { |num| puts "New number: " + num.to_s + " Sum: #{sum + num}"; sum += num }

# Iterating through an array

def through(arr)
    arr.each { |index| puts index}
end

through([1,2,5,6,8])

# Find Max

def find_max(arr)
    puts arr.max
end

find_max([5,9,15,22,3])

# Get Average

def get_avg(arr)
    sum = arr.reduce(:+)
    avg = sum / arr.length
    puts "The average of the array is #{ avg }"
end

get_avg([2,10,3,15])

# Array with Odd Numbers

y = (1..255).find_all { |i| i.odd? }
p y

# Greater Than Y

def greater(arr, y)
    puts arr.count { |i| i > y}
end

greater([5,3,1,18,4], 3)

# Square the Values

def square(arr)
    arr.map! { |i| i * i }
    p arr
end

square([2,4,10,50])

# Eliminate Negatives

def no_neg(arr)
    arr.map! { |i|
    if (i < 0)
        0
    else
        i
    end
    }
    p arr
end

no_neg([-2,5,-15,13,20,-8])

# Max,Min, Average

def mma(arr)
    max = arr.max
    min = arr.min
    sum = arr.reduce(:+)
    avg = sum / arr.length
    p max, min, avg
end

mma ([12, 49, 3, 10])

# Shift the Values

def change(arr)
    arr.shift
    arr << 0
    p arr
end

change ([1,3,8,9,10])

# Number to String

def no_neg(arr)
    arr.map! { |i|
    if (i < 0)
        "Dojo"
    else
        i
    end
    }
    p arr
end

no_neg([-2,5,-15,13,20,-8])




