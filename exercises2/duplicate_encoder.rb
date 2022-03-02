=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a string, replace each character with one of two other characters.
"(" if that char appears only once
")" if that char appears more than once
In the case of a char appearing more than once, each occurence is replaced by ")"
Ignore case when determining duplicates.
All chars need to be considered: letters, digits, spaces, punctuation, even ( and )


Inputs: A string
- Data types always the same? Yes
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
  Could be an empty string
- Validate input? No

Outputs: A string
- Print or return? Return new object or mutate existing? Return a new object
- Does element order matter? Yes
- How to handle duplicates? That part of the problem

Explicit Requirements
Replace single occurences with )
Replace multiple occurences with ()

Implicit Requirements - Review problem and examples
The multiple occurences need not be consecutive
 
Clarifying Questions
- Any domain-specific terms?

E: Examples, Test Cases, Edge Cases
------------------------------------------
"din" => "((("
"recede" => "()()()"
"Success" => ")())())"
"(( @" => "))(("

D: Data Structure
---------------------
Input: A string 
Intermediate: the lowercase version of the parameter string
  A hash with char counts
Output: A string


A: Algorithm
----------------
Pseudo-code:
If parameter string is empty, return empty string
Lowercase the parameter string
Tally the string to a hash to make char counts
Initiailize answer string
Iterate through the parameter string chars
  If count of that char is more than 1, add ) to answer string
  Else add ( to answer string
Return answer string

Helper method(s): N/A


C: Code
---------
=end

def duplicate_encode(str)
  return "" if str == ""
  str.downcase!
  counts = str.chars.tally
  answer_str = ""
  str.chars.each do |char|
    if counts[char] > 1
      answer_str << ")"
    else
      answer_str << "("
    end
  end
  answer_str
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("