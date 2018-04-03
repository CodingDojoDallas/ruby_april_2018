module MyEnumerable
  def my_each
    for i in 0...self.length
        yield(self[i])
    end
  end
end
class Array
   include MyEnumerable#
end
[1,2,3,4].my_each { |i| p i }
[1,2,3,4].my_each { |i| p i * 10 }