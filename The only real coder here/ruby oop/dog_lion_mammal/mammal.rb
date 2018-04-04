class Mammal
	def initialize(name)
		@mammal_name = name
		@health = 150
	end
	def display_health
		puts "#{@mammal_name}: health: #{@health}"
	end
end