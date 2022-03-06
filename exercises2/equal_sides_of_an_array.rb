=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given an array of integers, determine if there is a index where the numbers to the left
and the numbers to the right have the same sum.
The number at the index itself isn't part of either side.
There may be multiple indexes with equal sums. Return the leftmost.
The integers can be positive, negative, or 0.
The array can have length 1 to 999.
If there is no index that fits the conditions, return -1.

E: Examples, Test Cases, Edge Cases
------------------------------------------
p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1

D: Data Structure
---------------------
Input: An array of integers
Intermediate: 
Output: A positive integer, or -1


A: Algorithm
----------------
Pseudo-code:
Initiailize size to size of the array
Iterate through arr with each_with_index
  Get the sum of the slices to the left and right of the index
  If they are the same, return that index
Return -1
Helper method(s):


C: Code
---------
=end

def find_even_index(arr)
  size = arr.size
  arr.each_with_index do |_, index|
    left = arr.slice(0, index).sum
    right = arr.slice(index + 1, size - index -1).sum
    return index if left == right
  end
  return -1
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1