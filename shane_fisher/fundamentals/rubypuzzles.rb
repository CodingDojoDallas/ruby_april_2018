# Puzzle 1

def puzzle1()
arr = [3,5,1,2,7,9,8,13,25,32]
p arr.reduce(:+)
newarr = arr.reject {|i| i < 10}
p newarr
end

puzzle1

# Puzzle 2

def puzzle2()
    arr = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
    arr.shuffle!
    arr.each { |name| p name}
    newarr = arr.reject { |name| name.length < 6}
    p newarr

end

puzzle2

# Puzzle 3

def puzzle3()
    
    letters = ('a'..'z')

    arr =  letters.to_a.shuffle!
    p arr
    p arr.last
    p arr.first
    if arr.first.to_s.start_with?("a", "e", "i", "o", "u")
        puts "First letter is a vowel. Letter is #{arr.first}"
    end
    
end

puzzle3

# Puzzle 4

def puzzle4()
    arr = []
    10.times do
        num = rand(55..255)
        arr << num
    end
    p arr
end

puzzle4

# Puzzle 5

def puzzle5()
    arr = []
    10.times do
        num = rand(55..255)
        arr << num
    end
    p arr.sort, arr.min, arr.max
end

puzzle5

# Puzzle 6

def puzzle6()
    mystr = ""
    5.times do
        letter = (65+rand(26)).chr
        mystr << letter
    end
    p mystr
end

puzzle6

# Puzzle 7

def puzzle7()
    arr = []
    10.times do
        mystr = ""
        5.times do
            letter = (65+rand(26)).chr
            mystr << letter
        end
        arr << mystr
    end
    p arr
end

puzzle7
