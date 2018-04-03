require_relative 'human'

class Ninja < Human
    def initialize
        super()
        @stealth = 175
    end

    def steal(enemy)
        if enemy.class.ancestors.include? Human
            enemy.health -= 10
        else
            p "You stole from a child!"
        end
        self
    end

    def get_away
        @health -= 15
        self
    end

    def ninja_display
        super.display
        self
    end
end

