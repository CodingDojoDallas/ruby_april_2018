def guess_number guess
    number = 25
	p "You got it!" unless guess != number
	p "Guess was too high!" if guess > number
	p "Guess was too low!" if guess < number
end

guess_number(25)