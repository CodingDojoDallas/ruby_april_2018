require_relative 'mammal'

class Lion < Mammal
	def initialize
		super
		@health = 170
	end
	def fly
		@health -= 10
		self
	end
	def attack_town
		@health -= 50
		self
	end
	def eat_humans
		@health += 20
		self
	end
	def display_health
		puts "this lion"
		super
	end
end


pink = Lion.new
pink.attack_town.attack_town.attack_town.fly.fly.display_health