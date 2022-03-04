=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a string, determine how many of the characters appear more than once.
Ignore case when determining duplicates.
The string will only have letters and digits.
The string could be empty.
There may be no duplicates.

Inputs: 
- Data types always the same?
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
- Validate input?

Outputs:
- Print or return? Return new object or mutate existing?
- Does element order matter?
- How to handle duplicates?

Explicit Requirements
- 

Implicit Requirements - Review problem and examples
- 


E: Examples, Test Cases, Edge Cases
------------------------------------------
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

D: Data Structure
---------------------
Input: A string
Intermediate: A hash of character counts
Output: An integer


A: Algorithm
----------------
Pseudo-code:
Downcase the parameter
Use tally to create a hash of character counts
Using select, create a new hash containing only values greater than 1
Return the size of the new hash

Helper method(s):


C: Code
---------
=end

def duplicate_count(str)
  str.downcase.chars.tally.select { |_, v| v > 1 }.size
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2