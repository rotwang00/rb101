=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a string of letters, alphabatize them in a special way.
For each letter that appears, there will always be exacely one uppercase version and
  at least one lowercase version, though there may be more lowercase versions. Ex: "aaAaaa"
Group all like letters together, starting with the uppercase letter, followed by
  the lowercase letter(s). Ex: "Aaaaaa"
Place the groups of letters in alphabetical order. "AaaaaaCccDdZzzzzz"
The parameter string will only contain letters, or will be empty.


Inputs: A string of letters, or an empty string
- Data types always the same?
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
- Validate input?

Outputs: A string of letters, or an empty string
- Print or return? Return new object or mutate existing?
- Does element order matter?
- How to handle duplicates?

Explicit Requirements
- 

Implicit Requirements - Review problem and examples
- 


E: Examples, Test Cases, Edge Cases
------------------------------------------
p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""

D: Data Structure
---------------------
Input: 
Intermediate: 
Output: 


A: Algorithm
----------------
Pseudo-code:
If str is empty, return ""
Downcase str
Convert str to arr
Sort the chars in arr
Initiailize previous_upper to ""
Initialize answer_str
Iterate through arr using each_with_index |char, index|
  If index = arr.size - 1 (At the last char)
    Add lowercase version of char to answer_str
    break
  Is char the same as arr[index + 1]? AND is char NOT the same as previous_upper?
    Add uppercase version of char to answer_str
    Set previous_upper to char
  Else
    Add lowercase version to answer_str
Return answer_str

Helper method(s):


C: Code
---------
=end

def find_children(str)
  return "" if str == ""
  arr = str.downcase.chars.sort
  previous_upper = ""
  answer_str = ""
  arr.each_with_index do |char, index|
    if index == arr.size - 1
      answer_str << char
      break
    end
    if (char == arr[index + 1]) && char != previous_upper
      answer_str << char.upcase
      previous_upper = char
    else
      answer_str << char
    end
  end
  answer_str
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""
