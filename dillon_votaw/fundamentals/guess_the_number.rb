def guess_number guess
    number = 25
    
    return "got it" unless guess > number || guess < number
    return "too low" unless guess > number
    return "too high"

end 

puts guess_number 25
puts guess_number 2
puts guess_number 30