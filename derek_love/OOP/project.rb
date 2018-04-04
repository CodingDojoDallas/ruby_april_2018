class Project
    attr_accessor :name, :description
    def initialize(name, description)
        @name = name
        @description = description
    end

    def elevator_pitch
        p "#{@name}, #{@description}"
    end
end

project1 = Project.new('Project', 'new project for Coding Dojo')
project1.elevator_pitch
p project1.name
