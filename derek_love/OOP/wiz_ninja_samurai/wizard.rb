require_relative 'human'

class Wizard < Human
    attr_accessor :strength, :intelligence, :stealth, :health

    def initialize
        super()
        @health = 50
        @intelligence = 25
    end

    def heal
        @health += 10
        self
    end

    def fireball(enemy)
        if enemy.class.ancestors.include? Human
            enemy.health -= 20
        else
            "You fireballed a kitten!"
        end
        self
    end

    def wiz_display
        super.display
    end
end


