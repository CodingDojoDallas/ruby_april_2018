require_relative "mammal"
class Lion < Mammal
	def initialize(name)
		super(@mammal_name)
		@health += 20
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
	def lion_display
		display_health
		self
	end
end

aslan = Lion.new("aslan")
aslan.lion_display.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.lion_display