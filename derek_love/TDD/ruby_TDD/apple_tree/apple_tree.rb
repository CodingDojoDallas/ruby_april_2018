class Apple_Tree
    attr_accessor :age

    attr_reader :height, :apple_count

    def initialize
        @age = 0
        @height = 10
        @apple_count = 0
    end

    def year_gone_by
        @age += 1
        @height += @height * 0.1
        @apple_count += 2 if age.between?(4,10)
        return "#{@age}, #{@height}, #{@apple_count}"
    end

    def pick_apples
        @apple_count = 0
    end
end