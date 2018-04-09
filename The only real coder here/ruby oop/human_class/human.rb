class Human
	attr_accessor :human_str, :human_int, :human_stlh, :human_hp, :human_name
	def initialize(name)
		@human_name = name
		@str = 3
		@int = 3
		@stlh = 3
		@hp = 100
	end
	def attack(target)
		if target.class.ancestors.include? Human
			target.hp -= 10
		else
			puts "Pick on somebody your own size!"
		end
		self
	end
end

human1 = Human.new("Sir Prize")
human2 = Human.new("Sir Ender")
human1.attack(human2)
p human2.hp
p human1.human_name