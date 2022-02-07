=begin
Problem
Given three numbers, determine if those numbers can serve as the lengths
  of the sides of a triange. If so, what kind of triangle.
Input - 3 numbers. Can be ints or floats
Output - A symbol :equilateral, :isosceles, :scalene, :invalid

Examples
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

Data structure
The three parameters placed in an array
array.uniq! size

Algorithm
If any 0, return :invalid
If sum of two shortest sides is not greater than longest side, return :invalid
If uniq size is three, return scalene
If uniq size is two, return :isosceles
Otherwise, return equilateral
=end

def triangle(x, y, z)
  tri = [x, y, z]
  return :invalid if tri.include? 0
  tri.sort!
  return :invalid if tri[0] + tri[1] <= tri[2]
  uniques = tri.uniq.size
  return :equilateral if uniques == 1
  return :isosceles if uniques == 2
  return :scalene if uniques == 3
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid