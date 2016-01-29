#Inheritance
class Quadrilateral
end
# A rectangle, square, rhombus, and trapezoid are all types of quadrilaterals.
class Rectangle < Quadrilateral#types of quadrilaterals.
end
class Square < Rectangle#is a type of rectangle & types of quadrilaterals
end

class Trapezoid < Quadrilateral 
end

class Rhombus < Trapezoid
end


def test
  squa = Square.new
  puts squa.is_a?(Rectangle)
  puts squa.is_a?(Quadrilateral)

  rect = Rectangle.new
  puts rect.is_a?(Quadrilateral)
  puts rect.is_a?(Trapezoid)

  tra = Trapezoid.new
  puts tra.is_a?(Quadrilateral)


  rhom = Rhombus.new
  puts rhom.is_a?(Trapezoid)
  puts rhom.is_a?(Quadrilateral)

end

test
