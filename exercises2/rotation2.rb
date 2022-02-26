=begin
Problem
Given a number, num, and another number, n,
rotate the last n digits of num.
Rotation means that the first digit is moved to the end of the number.
Rotating 1234 results in 2341.
In this problem, the rotation takes place using the last n digits of num.
Any digits before the last n digits aren't affected.
Rotating just 1 digit returns that digit.
n will always be a positive integer.
Using the method from Rotation1 is recommended.

Example
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Data structure
Array version of num
start and finish arrays
result array
result integer

Algorithm
Convert num to an array
Split array into start and finish
Send finish to a helper method: rotate
Reassemble start and finish into result
Convert to integer
Return result

Helper method: rotate
Parameter: Array of integers
Returns: Rotated version of that that array.
Note: rotation1 will be the helper method

=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n)
  array = num.to_s.chars
  start = array.take(array.size - n)
  finish = array.drop(array.size - n)
  new_finish = rotate_array(finish)
  result = start.concat new_finish
  result.join("").to_i
end
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917