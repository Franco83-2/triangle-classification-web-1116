class Triangle
  attr_reader :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
     raise TriangleError if @one <= 0 || @two <= 0 || @three <= 0
     raise TriangleError if @one + @two <= @three || @one + @three <= @two || @two + @three <= @one
    if @one == @two && @two == @three
      :equilateral
    elsif @one == @two || @two == @three || @one == @three
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
