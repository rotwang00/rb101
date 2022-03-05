=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given two arrays, a and b, remove all elements from a which are elements in b.
If an element appears in b, all its occurences must be removed from a.
Array a will be left with only elements that don't also appear in b.
Return array a

Inputs: 2 arrays
- Data types always the same?
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
- Validate input?

Outputs: 1 array
- Print or return? Return new object or mutate existing?
- Does element order matter?
- How to handle duplicates?

Explicit Requirements
- 

Implicit Requirements - Review problem and examples
- Either or both parameter arrays could be empty
The return array could be empty

E: Examples, Test Cases, Edge Cases
------------------------------------------
p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
p array_digg([3, 4, 4, 5, 3], [3, 4]) == [5]

D: Data Structure
---------------------
Input: 2 arrays
Intermediate: 
Output: 1 array


A: Algorithm
----------------
Pseudo-code:
Iterate through arr_A with select |num|, placing the results in a new array, difference
  Condition: if arr_b does NOT include num
return difference

Helper method(s):


C: Code
---------
=end

def array_diff(arr_A, arr_B)
  difference = arr_A.select do |num|
    !arr_B.include? num
  end
  difference
end

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []