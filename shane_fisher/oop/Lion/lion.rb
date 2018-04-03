require_relative 'mammal'

class Lion < Mammal
    def initialize
    @health = 170
    self
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
    
    def lion_health
        p "This is a lion"
        display_health
        self
    end
end