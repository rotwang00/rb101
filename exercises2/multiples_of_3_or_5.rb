=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a number n, find the sum of all the mutiples of 3 and
  the multiples of 5 that are less than n.
If a number is a multiple of both 3 and 5, only count it once.


Inputs: An integer
- Data types always the same? Yes
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions) The number will
  be a positive integer
- Validate input? Not necessary

Outputs: An integer
- Print or return? Return new object or mutate existing? Return a new object
- Does element order matter? N/A
- How to handle duplicates? N/A

Explicit Requirements
- If a number is a multiple of both 3 and 5, only count it once.

Implicit Requirements - Review problem and examples
- The parameter integer will be positive.
- Don't count the parameter itself as a multiple

Clarifying Questions
- Any domain-specific terms?


E: Examples, Test Cases, Edge Cases
-------------------------------------------
solution(10) => 23 (3 + 5 + 6 + 9)
solution(20) => 78
solution(200) => 9168


D: Data Structure
---------------------
Input: An integer
Intermediate: An array of multiples
Output: An integer


A: Algorithm
----------------
Pseudo-code:
Iterate 1 through parameter - 1 |num| using #select
  If num is multiple of 3 or 5, store it in multiples
Return the sum of the multiples array

Helper method(s):
N/A

C: Code
---------
=end

def solution(n)
  multiples = (1..(n - 1)).select do |num|
    (num % 3 == 0) || (num % 5 == 0)
  end
  return multiples.sum
end

p solution(200)