require_relative 'mammal'

class Dog < Mammal

	def pet
		@health += 5
		p "Good ole belly rub increased health by 5"
		self
	end

	def walk 
		@health -= 1
		p "Walking and smelling the grass decreased health by 1"
		self
	end

	def run
		@health -= 10
		p "Running warrants lots of water and decreased health by 10"
		self
	end

end

dog1 = Dog.new
dog1.walk.walk.walk.run.run.pet.display_health