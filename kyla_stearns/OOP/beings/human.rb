class Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
	end

	def attack opponent
		# p opponent.class
		# p opponent.health
		if opponent.class.ancestors.include?(Human)
			# can also use opponent.class.to_s == "Human"
			opponent.health -= 15
			p "You have attacked a worthy opponent and he's down to #{opponent.health} health"
		else
			p "Attack someone of your own kind."
		end
		self
	end
end

p "In Human file"
human1 = Human.new
human2 = Human.new
# human1.attack(human2)
