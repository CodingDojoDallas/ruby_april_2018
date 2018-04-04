class Human
	attr_accessor :strength, :intelligence, :health, :stealth
	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack(target)
		if target.class.ancestors.include? Human
			puts 'yup'
			target.health -= 10
			true
		else
			false
		end
	end
end

class Wizard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
	end
	def heal
		@health += 10
		self
	end
	def fireball(target)
		target.health -= 20
		self
	end
end

class Ninja < Human
	def initialize
		super
		@stealth = 175
	end
	def steal(target)
		attack(target)
		@health += 10
		self
	end
	def get_away
		@health -= 15
		self
	end
end

class Samurai < Human
	@@samurai_count = 0
	def initialize
		super
		@health = 200
		@@samurai_count += 1 
	end
	def death_blow(target)
		target.health = 0
		self
	end
	def meditate
		@health = 200
		self
	end
	def how_many
		puts "there are #{@@samurai_count} samurai"
	end
end

dillon = Human.new
nollid = Samurai.new
puts dillon.health
puts nollid.health
puts nollid.how_many
yuuup = Samurai.new
puts nollid.how_many #why does a space log after how many? its because puts returns nothing
nollid.death_blow(dillon)
puts dillon.health
dillon.attack(nollid)
puts nollid.health
