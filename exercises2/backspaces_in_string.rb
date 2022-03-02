=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a string, interpret # as a backspace.
"a#bc#d" will result in "bd"

Inputs: A string
- Data types always the same? Yes
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
  Parameter string could be empty
- Validate input? No

Outputs: A string
- Print or return? Return new object or mutate existing? return a new string
- Does element order matter? Yes
- How to handle duplicates? N/A

Explicit Requirements
- Hashes in the parameter string delete the char before them, and delete the hash itself.


Implicit Requirements - Review problem and examples
- If a hash is the first char in a string, it deletes itself. 
Therefore, a string of only hashes returns an empty string

E: Examples, Test Cases, Edge Cases
------------------------------------------
"abc#d##c" ==> "ac"
"abc##d######" ==> ""
"#######" ==> ""
"" ==> ""

D: Data Structure
---------------------
Input: A string
Intermediate: 
Output: A string


A: Algorithm
----------------
Pseudo-code:
Begin a while loop. Condition: while the string contains a hash symbol
  Find the first occurence of a hash
  If it's at index 0, delete it
  Else, delete it and the char before it
Return string

Helper method(s):
N/A

C: Code
---------
=end

def clean_string(str)
  while str.include? "#"
    i = str.index("#")
    if i == 0
      str.slice!(i)
    else
      str.slice!(i - 1, 2)
    end
  end
  str
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""