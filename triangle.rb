# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides = [a, b, c].sort

	raise TriangleError, "Sides must have a length"  if a <= 0 || b <= 0 || c <= 0
	raise TriangleError, "Two sides must be greater than third" if sides[0] + sides[1] <= sides[2]
	
	if sides.uniq.size == 1
		:equilateral
	elsif sides.uniq.size == 2
		:isosceles
	else
		:scalene
	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
