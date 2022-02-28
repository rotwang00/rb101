=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a string, return a new string with two transformations:
  Flip the case of each letter: upper to lowercase, lower to uppercase
  Reverse the order of words within the string

Inputs: A string
- Data types always the same? Yes
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions) 
  Could be empty string. Could have spaces.
- Validate input? Not necessary

Outputs: A new string
- Print or return? Return new object or mutate existing? Return new object
- Does element order matter? Yes
- How to handle duplicates? Can be ignored

Explicit Requirements
- Toggle the case of each letter
  Reverse the order of the words
  There will be only letters and spaces. No digits or punctuation.

Implicit Requirements - Review problem and examples
- Ignore spaces

Clarifying Questions
- Any domain-specific terms?


E: Examples, Test Cases, Edge Cases
-------------------------------------------
"Example Input" => "iNPUT eXAMPLE"
"Paul Thurmond" => "tHURMOND pAUL"

D: Data Structure
---------------------
Input: a string
Intermediate: an array
Output: a string


A: Algorithm
----------------
Pseudo-code:
Convert parameter string to array based on spaces: 'arr'
Reverse arr
Initiailize answer_arr
Iterate through arr |word|
  Initiailize new_word
  Iterate through word.chars |char|
    Reverse case of each char and add to new_word
  Add new_word to answer_arr
Join answer_arr to become answer_str
Return answer_str

Helper method(s):
N/A

C: Code
---------
=end
def string_transformer(str)
  arr = str.split(" ")
  arr = arr.reverse
  answer_arr = []
  arr.each do |word|
    new_word = ""
    word.chars.each do |char|
      if ("a".."z").include? char
        new_word += char.upcase
      else
        new_word += char.downcase
      end
    end
    answer_arr << new_word
  end
  answer_arr.join(" ")
end

p string_transformer("Example Input")