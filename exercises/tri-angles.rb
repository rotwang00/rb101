=begin
Problem
Given three angles, determine if the triangle formed by these angles would be
invalid, right, acute, or obtuse.
All angle values will be integers.
All angles are measured in degrees.
Input - three integers
Output - a symbol - :right, :acute, :obtuse, or :invalid

Examples
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

Data structure
An array containing the three angle integers

Algorithm
Create an array containing the three angle integers
If any of the angles is 0, return :invalid
If the sum of the angles isn't 180, return :invalid
If one of the angles is 90, return :right
If one of the angles is > 90, return :obtuse
Otherwise, return :acute
=end

def triangle(x, y, z)
  angles = [x, y, z]
  if angles.include? 0
    return :invalid
  end
  if angles.sum != 180
    return :invalid
  end
  if angles.include? 90
    return :right
  elsif angles.max > 90
    return :obtuse
  else
    return :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid