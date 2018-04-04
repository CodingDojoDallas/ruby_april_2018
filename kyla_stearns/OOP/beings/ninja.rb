require_relative 'human'

class Ninja < Human
	def initialize
		super()
		@stealth = 175
	end

	def steal opponent
		@health += 10
		p "Ninja stole some goods and increased health by 10"
		self
	end

	def get_away
		@health -= 15
		p "Ninja got away at the expense of 15 health"
		self
	end
end

p "In Ninja file"

