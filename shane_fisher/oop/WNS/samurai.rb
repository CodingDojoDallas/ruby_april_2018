require_relative "human"

class Samurai < Human
@@total_sams = 0

def initialize
    super()
    @health = 200
    @@total_sams += 1
end

def death_blow(object)
    object.health = 0
    self
end

def meditate(object)
    @health = 200
    self
end

def how_many()
    return @@total_sams
    self
end

end
