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
  # WRITE THIS CODE
  count = isEqual(a,b)
  count += isEqual(a,c)
  count += isEqual(b,c)
  case count
  when 3
    :equilateral
  when 1
    :isosceles
  else
    :scalene
  end
end

def isEqual(a, b)
  if a == b
    return 1
  end
  return 0
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
