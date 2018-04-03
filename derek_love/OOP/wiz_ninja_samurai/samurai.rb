require_relative 'human'

class Samurai < Human
    attr_accessor :strength, :intelligence, :stealth, :health
    
    @@num_of_samurai = 0

    def initialize
        super()
        @health = 200

        @@num_of_samurai += 1
    end

    def death_blow(enemy)
        if enemy.class.ancestors.include? Human
            enemy.health = 0
        else
            p "You killed a kitten!!!"
        end
    end
    
    def meditate
        @health = 200
    end

    def how_many
        p "There are #{@@num_of_samurai} samurais"
    end

    def samurai_display
        super.display
    end
end



