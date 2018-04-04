require_relative 'mammal'

class Lion < Mammal

	def fly
		@health -= 10
		p "Flying is awesome but decreased health by 10"
		self
	end

	def attack_town
		@health -= 50
		p "Those humans were disturbing but worth the loss of 50 health"
		self
	end

	def eat_humans
		@health += 20
		p "Great nourishment and increased health by 20"
		self
	end

	def display_health
		p "This is a lion"
		super()
		self
	end

end

lion1 = Lion.new
lion1.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health