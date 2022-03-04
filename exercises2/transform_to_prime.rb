=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given an array of integers, sum them, find the next highest prime, and 
  return the difference.
So: [3, 2, 1] sums to 6, the next highest prime is 7, so the return value is 1.
The array will have at least two elements.
The elements will all be positive integers.
Repetition of numbers could occur in the array.
If the sum is prime, the return value is 0.

Inputs: An array of integers
- Data types always the same?
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
- Validate input?

Outputs: An integer
- Print or return? Return new object or mutate existing?
- Does element order matter?
- How to handle duplicates?

Explicit Requirements
- 

Implicit Requirements - Review problem and examples
- 


E: Examples, Test Cases, Edge Cases
------------------------------------------
p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2

D: Data Structure
---------------------
Input: 
Intermediate: 
Output: 


A: Algorithm
----------------
Pseudo-code:
Sum the elements of the array
Using an infinite loop, find the next highest prime (could be the sum)
Return the difference

Helper method(s):


C: Code
---------
=end
require 'prime'

def minimum_number(arr)
  prime_search = arr.sum
  found = false
  while found == false do
    if prime_search.prime?
      found = true
      break
    end
    prime_search += 1
  end
  return prime_search - arr.sum
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2