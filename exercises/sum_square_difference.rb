=begin
Problem
Given an integer n, find the difference between
  The square of the sum of the first n positive integers, and
  The sum of the squares of the first n positive integers
n will be a positive integer
Input - A positive integer
Output - A non-negative integer

Examples
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

Data structure
The given integer
The two computed integers
The difference integer

Algorithm
Find the sum of the first n integers
  Square it
Find the squares of the first n integers
  Sum them
Find the difference between those two numbers
=end

def sum_square_difference(num)
  square_of_sum = ((1..num).reduce(:+)) ** 2
  sum_of_squares = (1..num).reduce { |sum, n| sum + (n ** 2) }
  return (square_of_sum - sum_of_squares).abs
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

