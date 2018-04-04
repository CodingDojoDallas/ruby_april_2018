require_relative "human"
class Ninja < Human
	def initialize
		super()
		@stlh = 175
	end
	def steal(target)
		if @hp < 100
			@hp += 10
			target.hp -= 10
		else
			puts "My chi is full, master..."
		end
	end
	def get_away
		@hp -= 15
		puts "Not strong like Choi, retreat I must..."
	end
end