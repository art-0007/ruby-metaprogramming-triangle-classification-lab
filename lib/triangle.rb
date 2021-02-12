require 'pry'
class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a <= 0 || b <= 0 || c <= 0 || a+b<=c || b+c<=a || a+c<=b
      
        #begin
          raise TriangleError
        #rescue TriangleError => error
        #puts error.message
        #ßend
      
    elsif a == b && b == c
      :equilateral
    elsif (a == b && b != c) || (a == c && c != b)  || (b == c && c != a)
      :isosceles
    elsif a != b && a != c && b != c
      :scalene
    end 
  end
  
  class TriangleError < StandardError
    def message
       "Invalid triangle!"
    end
  end


end
