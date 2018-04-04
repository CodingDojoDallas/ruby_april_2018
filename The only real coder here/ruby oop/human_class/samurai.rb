require_relative "human"
class Samurai < Human
	@@number_of_samurai = 0
	def initialize
		super()
		@hp = 200
		@@number_of_samurai += 1
	end
	def death_blow(target)
		target.hp = 0
	end
	def meditate
		@hp = 200
	end
	def how_many
		puts "Number of samurai: #{@@number_of_samurai}"
	end
end