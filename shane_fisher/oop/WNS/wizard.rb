require_relative "human"

class Wizard < Human

def initialize
    super()
    @health = 50
    @int = 25
end

def heal
    @health += 10
    self
end

def fireball(object)
    object.health -= 20
end

end