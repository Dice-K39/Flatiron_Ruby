require 'pry'
class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    side_1_2 = self.side_1 == self.side_2
    side_1_3 = self.side_1 == self.side_3
    side_2_3 = self.side_2 == self.side_3
    sides_greater_than_0 = self.side_1 > 0 && self.side_2 > 0 && self.side_3 > 0
    triangle_inequality = (self.side_1 + self.side_2 > self.side_3) && (self.side_1 + self.side_3 > self.side_2) && (self.side_2 + self.side_3 > self.side_1)

    if sides_greater_than_0 && triangle_inequality
      if (side_1_2 && side_2_3) 
        :equilateral
      elsif (side_1_2 || side_1_3 || side_2_3) 
        :isosceles
      elsif (self.side_1 != self.side_2 && self.side_2 != self.side_3) 
        :scalene
      else
        #binding.pry
        begin
          raise TriangleError
        # rescue TriangleError => error
        #   error.message
            #binding.pry
        end
      end
    else
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   error.message
          #binding.pry
      end
    end
    
  #   if (side_1_2 && side_2_3) && sides_greater_than_0 && triangle_inequality
  #     :equilateral
  #   elsif (side_1_2 || side_1_3 || side_2_3) && sides_greater_than_0 && triangle_inequality
  #     :isosceles
  #   elsif (self.side_1 != self.side_2 && self.side_2 != self.side_3) && sides_greater_than_0 && triangle_inequality
  #     :scalene
  #   else
  #     #binding.pry
  #     begin
  #       raise TriangleError
  #     # rescue TriangleError => error
  #     #   error.message
  #       #binding.pry
  #     end
  #   end
  end

  class TriangleError < StandardError

  end
end
