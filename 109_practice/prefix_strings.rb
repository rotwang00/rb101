=begin
Problem
Given an array of strings, find the longest common prefix string.
If there is no common prefix string, return ""
All inputs are in lowercase letters
No spaces, digits, or punctuation
Input: An array of strings
Output: A string, which could be empty

Examples
["float", "floe", "fling"] => "fl"
["car", "cat", "cinema"] => "c"
["dog", "tooth", "oboe"] => ""

Data Structure
An array holding array versions of the parameter strings
A string holding the common prefix

Algorithm
Initiailize char_arrays
Iterate through parameter array |str|
  Place array version of str in char_arrays
Initialize common_prefix to ""
Iterate through the first array of char_arrays with index |char, index|
  Iterate through all other arrays of char_arrays |word|
    Return common_prefix if word[index] does not equal char
  Add char to common_prefix
Return common_prefix
=end

def prefix_strings(arr)
  char_arrays = []
  arr.each do |str|
    char_arrays << str.chars
  end
  common_prefix = ""
  char_arrays[0].each_with_index do |char, index|
    for x in (1..char_arrays.size - 1)
      return common_prefix if char_arrays[x][index] != char
    end
    common_prefix += char
  end
  common_prefix
end

p prefix_strings(["float", "floe", "fling"]) == "fl"
p prefix_strings(["car", "cat", "cinema"]) == "c"
p prefix_strings(["dog", "tooth", "oboe"]) == ""
