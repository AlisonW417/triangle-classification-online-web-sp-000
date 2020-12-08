class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  class TriangleError < StandardError
    def message
      puts "Each side of the triangle must be larger than 0."
    end 
  end 
  
  def kind 
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    elsif @side1 == 0 && @side2 == 0 && @side3 == 0 
      begin 
        raise TriangleError
      end 
    else 
      :isosceles
    end 
  end
end
