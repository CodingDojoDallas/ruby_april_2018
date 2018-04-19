class Project
    attr_accessor :name, :description, :owner
    def initialize(name, description, owner)
        @name = name
        @description = description
        @owner = owner
        @tasks = []
    end

    def elevator_pitch
        p "#{@name}, #{@description}"
    end

    def tasks
        p @tasks
    end

    def add_tasks(task)
        @tasks.push(task)
    end

    def print_tasks
        @tasks.each { |task| p task }
    end
end