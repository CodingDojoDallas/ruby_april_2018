class Project
    attr_accessor :name, :description
    def initialize(name, desc)
        @name = name
        @description = desc
    end
    def elevator_pitch
    #Liberty taken with output instead of generic comma
        puts "My project is #{ @name } and it is #{ @description }"
    end
end
project1 = Project.new("Weebles and Wobbles", "Amazingly Awesome")
puts project1.name # => "Weebles and Wobbles"
project1.elevator_pitch  # => "Project 1, Description 1"


