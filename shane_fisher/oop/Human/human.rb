class Human
    attr_accessor  :str, :int, :stealth, :health
    def initialize
        @str = 3
        @int =  3
        @stealth = 3
        @health = 100
    end

    def attack(object)
        if object.class.ancestors.include? Human
            object.health -= 10
            puts "Target has #{object.health} left."
            self

        else
            puts "You can't attack a non-Human"
            self
        end
    end

end

Eric = Human.new
Todd = Human.new
Eric.attack(Todd).attack(Todd).attack(Todd)