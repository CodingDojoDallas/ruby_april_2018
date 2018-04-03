require_relative "human"

class Ninja < Human

def initialize
    super()
    @health = 175
end

def steal(object)
    object.health -= 10
    @health += 10
end

def get_away
    @health -= 15
end

end