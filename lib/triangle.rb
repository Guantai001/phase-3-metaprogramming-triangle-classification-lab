class Triangle
  # write code here
   attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  # returns :equilateral when all sides are equal (FAILED - 1)
  #   returns :isosceles when any two sides are equal (FAILED - 2)
  #   returns :scalene when no sides are equal (FAILED - 3)
  #   raises an error for triangles with no size (FAILED - 4)
  #   raises an error for triangles with negative sides (FAILED - 5)
  #   raises an error for triangles violating triangle inequality (FAILED - 6)

  def kind
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      raise TriangleError
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end

  
  
end
