=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given an array of strings, sort the strings alphabetical order while ignoring case.
The built-in sort method does not ignore case.

Inputs: An array of strings
- Data types always the same?
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
- Validate input?

Outputs: An array of strings
- Print or return? Return new object or mutate existing?
- Does element order matter?
- How to handle duplicates?

Explicit Requirements
- 

Implicit Requirements - Review problem and examples
- 


E: Examples, Test Cases, Edge Cases
------------------------------------------
"Hello", "there", "I'm", "fine"] --> ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"]) --> ["a", "B", "C", "d"]

D: Data Structure
---------------------
Input: 
Intermediate: 
Output: 


A: Algorithm
----------------
Pseudo-code:
Use sort_by to sort the array by the lowercase version of each string

Helper method(s):


C: Code
---------
=end

def sortme(arr)
  arr.sort_by do |word|
    word.downcase
  end
end

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]