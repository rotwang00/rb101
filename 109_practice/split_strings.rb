=begin
Problem
Given a string, split the string into pairs of characters.
Place these pairs into an array and return it.
If there is an odd number of charters, fill out the missing
last character with an underscore.
If passed an empty string, return an empty array.

Examples
p solution('abc') == ['ab', 'c_']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []

Data structures
The original string
The answer array

Algorithm
If string is empty, return an empty array.
If string size is odd, append an underscore to the end.
Initiailize answer array
While string size > 0
  Slice off the first pair of chars
  Place them in the answer array
Return array
=end

def solution(str)
  return [] if str == ""
  str += "_" if str.size.odd?
  answer = []
  while str.size > 0
    answer << str.slice!(0, 2)
  end
  answer
end

p solution('abc') == ['ab', 'c_']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []

