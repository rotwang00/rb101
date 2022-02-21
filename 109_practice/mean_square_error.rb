=begin
Problem
Given two arrays of equal length that are filled with integers,
compare the values at the same index in the two arrays,
***find the difference between those two values,
square this difference,
and return the average of those squares.

***Since the differences are going to be squared, there's no need to
find the absolute value. The square will always be positive.

The arrays will have a least one element.

Input: Two integer arrays of equal length
Output: A float

Examples
[1, 2, 3], [4, 5, 6] --> 9 because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2] --> 16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1] --> 1 because (1 + 1) / 2

Data structures
The original arrays
An array of the differences
The average of the elements in the array of differences

Algorithm
Initiailize array: differences
Loop through arr1 using #each_with_index
  Find the difference between the corresponding integers
  Square that difference (always yields a positive integer)
  Store the result in differences
Find the average of the elements in differences and return it

=end

def solution(arr1, arr2)
  differences = []
  arr1.each_with_index do |num1, i|
    square_diff = (num1 - arr2[i]) ** 2
    differences << square_diff
  end
  average = differences.reduce(:+) / differences.size.to_f
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1