=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a string, return the same string will all even indexed chars, including 0,
in uppercase, and all odd index characters in lowercase.
The parameter string will have only letter and spaces.
Spaces may be present. The matter when detrmining indexing, so:
"WeIrDsTrInG" and "WeIrD StRiNg" are both correct

E: Examples, Test Cases, Edge Cases
------------------------------------------
p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"

D: Data Structure
---------------------
Input: A string
Intermediate: 
Output: A string


A: Algorithm
----------------
Pseudo-code:
Initialize answer string
Convert str to arr of chars
Iterate arr eachchar, index|
  If index is odd
    add lowercase version of char to answer
  else
    add uppercase version of char to answer
return answer
  
Helper method(s):


C: Code
---------
=end

def weirdcase(str)
  answer = ""
  arr = str.chars
  arr.each_with_index do |char, index|
    if index.odd?
      answer << char.downcase
    else
      answer << char.upcase
    end
  end
  p answer
  answer
end

p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"