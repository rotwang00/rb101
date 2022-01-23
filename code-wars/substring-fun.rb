# Problem
# Given an array of strings, take the nth letter of string and use them to form a new string.
# n is the position in the word list
# Input - Array of strings, which could be empty
# Output - The new string
#
# Examples
# p nth_char(['yoda', 'best', 'has']) == 'yes'
# p nth_char([]) == ''
# p nth_char(['X-ray']) == 'X'
#
# Data structure
# The array provided as a parameter
# The answer string
#
# Algorithm
# If arr size == 0 return ""
# new_string = ""
# arr.each_with_index do |string, i|
#   new_string += string[0]
# end
# new_string

def nth_char(arr)
  return "" if arr.size == 0
  new_string = ""
  arr.each_with_index do |string, i|
    new_string += string[i]
  end
  new_string
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'