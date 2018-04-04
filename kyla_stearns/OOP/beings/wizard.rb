require_relative 'human'
require_relative 'ninja'
require_relative 'samurai'


class Wizard < Human
	def initialize
		super()
		@intelligence = 25
		@health = 50
	end

	def heal
		@health += 10
		p "Wizard healed by 10 health"
		self
	end

	def fireball opponent
		opponent.health -= 20
		p "Wizard threw a fireball. Opponent's health is now #{opponent.health}"
		self
	end
end

p "In Wizard file"

ninja1 = Ninja.new
wizard1 = Wizard.new
samurai1 = Samurai.new
samurai2 = Samurai.new

wizard1.fireball(ninja1).heal
samurai1.death_blow(wizard1).meditate
ninja1.steal(samurai2).get_away

Samurai.how_many