def guess_number guess
	number = 25

	if guess == number
		p "you got it"
	elsif guess > number
		p "guess was to high"
	elsif guess < number
		p "guess was to low"
	end
end

guess_number 25

		
		