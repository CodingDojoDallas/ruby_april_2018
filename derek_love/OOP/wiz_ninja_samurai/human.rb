class Human
    attr_accessor :strength, :intelligence, :stealth, :health

    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def display
        p "Strength: #{@strength}, Intelligence: #{@intelligence}, Stealth: #{@stealth}, Health: #{@health}"
    end

    def attack(enemy)
        if enemy.class.ancestors.include? Human
            enemy.health -= 20
        else
           p "You punched a kitten!"
        end
        self
    end

end

# derek = Human.new
# allison = Human.new

# allison.attack(derek).attack(derek)

# p derek.health
