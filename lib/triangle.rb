class Triangle
  
  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 

  def kind
     sides = [@side1, @side2, @side3]
     return :equilateral if sides.first==sides[1] && sides[1] ==sides.last
     return :isosceles if 
  end 
     

     
  
  # write code here
end
