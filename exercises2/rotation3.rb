=begin
Problem
Given an integer, rotate the digits one or several times:
  Rotate all digits, then
  Rotate all but the first one,
  Rotate all but the first two, 
  And so on until
  Rotate the last two
Don't worray about multiple 0's.
Make use of rotatation2 from the previous exercise.

Input - An integer
Output - An integer

Examples
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

Data structures
An array version of the parameter integer

Algorithm
Convert parameter to array of chars
Iterate through array with index
  Invoke helper method rotation2 with parameters arr and size - index
Convert arr to int
Return int
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(array, n)
  start = array.take(array.size - n)
  finish = array.drop(array.size - n)
  p start, finish
  new_finish = rotate_array(finish)
  result = start.concat new_finish
end

def max_rotation(number)
  digits = number.to_s.chars
  for i in (0..digits.size)
    digits = rotate_rightmost_digits(digits, i)
  end
  digits.join("").to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p pmax_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845