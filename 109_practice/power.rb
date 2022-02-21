=begin

Problem
Given two integers, find the value of the first raised to the second.
You may not use the ** operator.
If the second argument is negative, return nil.

Input: two integers
Output: one integer or nil

Data structure

Algorithm
If num2 is negative, return nil.
If num2 is zero, return 1
Initiailize answer to 1
Set flag to 1 if num1 is >= 0, -1 if num1 is < 0
Run a loop num2 times
  Multiply answer by num1 and flag
Return answer

=end

def power(num1, num2)
  return nil if num2 < 0
  return 1 if num2 == 0
  answer = 1
  num2.times do
    answer *= num1
  end
  answer
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil