class MathDojo
    attr_accessor :result

    def initialize
        @result = 0
    end

    def add(*nums)
        for i in 0...nums.length
            if nums[i].respond_to?(:to_i) == true
                @result += nums[i]

            elsif nums[i].respond_to?(:to_a) == true
                for x in 0...nums[i].length
                    @result += nums[i][x]
                end
            end
        end
        p @result
        self
    end

    def subtract(*nums)
        for i in 0...nums.length
            if nums[i].respond_to?(:to_i)
                @result -= nums[i]

            elsif nums[i].respond_to?(:to_a)
                for x in 0...nums[i].length
                    @result -= nums[i][x]
                end
            end
        end
        self
        p @result
    end

end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3,2)
challenge2 = MathDojo.new.add(1).add([3,5,7,8], [2, 4.3, 1.25]).subtract([2, 3], [1.1, 2.3])