require_relative "human"
class Wizard < Human
	def initialize
		super()
		@int = 25
		@hp = 50
	end
	def heal
		if @hp < 50
			hp += 10
		else
			puts "I'm at full health!"
		end
		self
	end
	def fireball(taget)
		target.hp -= 20
		puts "IMA FIRIN MAH LYZOR, BAHHHHH!"
	end
end