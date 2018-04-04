require_relative "mammal"
class Dog < Mammal
	def walk
		@health -= 1
		self
	end
	def run
		@health -= 5
		self
	end
	def dog_display
		display_health
		self
	end
	def pet
		@health += 10
		self
	end
end

dogo = Dog.new("aspen")
dogo.walk.walk.walk.run.run.pet.dog_display