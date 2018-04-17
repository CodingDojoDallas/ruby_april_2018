class Project
    attr_accessor :name, :description

    def elevator_pitch
        p "#{name}, #{description}"
    end
end