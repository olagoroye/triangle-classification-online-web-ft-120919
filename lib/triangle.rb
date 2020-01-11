class Triangle
attr_reader :side1, :side2, :side3, :tri_array
  def initialize(side1,side2,side3)
    @tri_array = []
    @side1 = side1
    @side2 = side2
    @side3 = side3 
    @tri_array << side1
    @tri_array << side2
    @tri_array << side3
 end

   def kind
  if @tri_array.any? { |side| side <= 0 }
  raise TriangleError
   elsif @tri_array[0] >= @tri_array[1] + @tri_array[2]
   raise TriangleError
   elsif @tri_array[1] >= @tri_array[0] + @tri_array[2]
  raise TriangleError
   elsif @tri_array[2] >= @tri_array[1] + @tri_array[0]
    raise TriangleError
   elsif @tri_array.uniq.size == 1
    :equilateral
    elsif @tri_array.uniq.size == 2
    :isosceles
    else
    :scalene
     end
   end
   class TriangleError < StandardError
    # triangle error code
  end
end
