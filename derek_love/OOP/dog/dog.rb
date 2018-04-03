require_relative 'mammal'

class Dog < Mammal
    attr_accessor :health

    def dog_health
        display_health
        self
    end

    def pet
        @health += 5
        self
    end

    def walk
        @health -= 1
        self
    end

    def run
        @health -= 10
        self
    end
end

doggo = Dog.new

doggo.walk.walk.walk.run.run.pet.dog_health