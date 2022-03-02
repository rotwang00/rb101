=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given two strings, determine which is longer. Return the result of
concatenating the shorter string, the longer string, and the shorter one again.
The strings will be different lengths.

Inputs: Two string
- Data types always the same? Yes
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions) A string could
  be empty
- Validate input? Not necessary

Outputs:
- Print or return? Return new object or mutate existing? Return a new string
- Does element order matter? N/A
- How to handle duplicates? N/A

Explicit Requirements
- Find the shorter of two strings.
Make a new string that's short + long + short
One string will always be shorter

Implicit Requirements - Review problem and examples
- 

Clarifying Questions
- Any domain-specific terms?


E: Examples, Test Cases, Edge Cases
------------------------------------------
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

D: Data Structure
---------------------
Input: Two strings
Intermediate: N/A
Output: One string


A: Algorithm
----------------
Pseudo-code:
If str1 is longer, return str2 + str1 + str2
Else return str1 + str2 + str1


Helper method(s):
N/A

C: Code
---------
=end

def short_long_short(str1, str2)
  if str1.size > str2.size
    return str2 + str1 + str2
  else
    return str1 + str2 + str1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"