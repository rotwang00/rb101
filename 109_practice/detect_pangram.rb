# Problem
# Determine whether or not a given string is a pangram
# Ignore case and punctuation
# Input - a string
# Output - a Boolean
#
# Examples
# p pangram?("The quick brown fox jumps over the lazy dog.") == true
# p pangram?("This is not a pangram.") == false
#
# Data structure
# An array containing every lowercase letter
#
# Algorithm
# Create an array with every lowercase letter - "letters"
# downcase "sentence"
# uniq "sentence"
# Loop through "sentence", removing each char from "letters"
# Return true is letters is empty

def pangram?(sentence)
  letters =* ("a".."z")
  sentence = sentence.downcase.chars.uniq
  sentence.each do |char|
    letters.delete(char)
  end
  letters.length == 0 ? true : false
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false