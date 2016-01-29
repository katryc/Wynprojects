class Square
attr_accessor :side_length
end
s = Square.new
s.side_length = 5
s.side_length

p s.side_length


----------------------------------------------------------

class Square
  attr_accessor :side_length
  def initialize(side_length)
    @side_length = side_length
  end
end
s = Square.new(5)
p s.side_length
---------------------------------------------------------

class Square
attr_accessor :side_length
def initialize(side_length)
  @side_length = side_length
end
def area
@side_length * @side_length
end
end
s = Square.new(5)
p s.area
---------------------------------------------------------

class Quick_Fox

   def jumped_over(lazy_dog, daisy_log)

   end
 end
 quick_fox = Quick_Fox.new
 lazy_dog = lazy_dog
 daisy_log = daisy_log
 quick_fox.jumped_over(lazy_dog, daisy_log)
 --------------------------------------------------------
 
 puts "File self: #{self}"

def a_method
  puts "Method self: #{self}"
end
a_method

class Table
    puts "Class self: #{self}"
    def a_method
        puts "Class method self: #{self}"
    end
end
table = Table.new
table.a_method
