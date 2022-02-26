=begin
Problem
Given an array, move the first element to the end of the array.
The original should not be modified.
Do not use #rotate or #rotate!

Input: An array
Output: A new array

Examples
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

Data structure
The parameter array
A new answer array

Algorithm
Make a copy of the parameter array using map: result
Shift the first element of result
Push that first element to result
Return result
=end

def rotate_array(arr)
  # result = arr.map(&:itself)
  # element = result.shift
  # result.push(element)
  # result
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']