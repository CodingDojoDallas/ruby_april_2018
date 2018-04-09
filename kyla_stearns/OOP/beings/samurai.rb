require_relative 'human'

class Samurai < Human
	@@total_samurai = 0
	def initialize
		super()
		@health = 200
		@@total_samurai += 1
	end

	def death_blow opponent
		opponent.health = 0
		p "Samurai executed a death blow. His health is now #{opponent.health}"
		self
	end

	def meditate
		@health = 200
		p "Samurai health restore to #{@health}"
		# don't need this extra variable, more literal but could also do it this way
		# restore = 200 - @health
		# @health += restore
		self
	end

	def self.how_many
		p "There are #{@@total_samurai} samurai total"
	end

end

p "In Samurai file"
# samurai1 = Samurai.new
# samurai2 = Samurai.new
# # samurai1.death_blow(samurai2).meditate.how_many
# samurai1.death_blow(wizard1)
