# Problem - Given an array of strings, how many characters in each string
# match their position in the alphabet?
# Input - An array of strings of mixed-case letters, no spaces or punctuation
# Output - An array with the integer counts of chars meeting the specification
#
# Example - 'abode' has 4 letters that match their alphabet positions, a, b, d, and e.
# 'ABodE' also has four letters, since we're ignoring case.
#
# Data structure - The provided array of strings, the output array of integers
#
# Algorithm
# answer = []
# For each element in the array:
# string.downcase!
# hits = 0
# string.chars.each_with_index do |char, index|
#   if char.ord - 97 == index
#     hits += 1
#   end
# end
# add hits to answer array

def solve(strings)
  answer = []
  strings.each do |string|
    string.downcase!
    hits = 0
    string.chars.each_with_index do |char, index|
      if char.ord - 97 == index
        hits += 1
      end
    end
    answer << hits
  end
  answer
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]