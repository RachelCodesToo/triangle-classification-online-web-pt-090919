class Triangle
  
  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 

  def kind
     sides = [@side1, @side2, @side3]
     raise TriangleError (@side1 <= 0 || @side2 <= 0 || @side <= 0 ) or (sides.first+sides[1] <= sides.last || sides.first+sides.last <= sides[1] || sides[1]+sides.last <= sides.first) 
     # checks to see if all sides are greater than 0 and to see if 3rd side is always larger than the other two sides combined
     return :equilateral if sides.first==sides[1] && sides[1] ==sides.last
     return :isosceles if sides[1] == sides.last || sides.first == sides.last || sides.first == sides[1]
     return :scalene if sides.uniq.length == 3
  end 
     
  class TriangleError < StandardError
  end 
  
  
  # write code here
end
