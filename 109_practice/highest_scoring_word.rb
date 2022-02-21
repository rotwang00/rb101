=begin
Problem

Given a string of words, find the one with the highest score.
The score is comoputed by a = 1, b = 2, c = 3, etc.
If two words tie for the highest score, return the one that appears
first in the original string.
All letters will be lowercase.
All inputs will be valid.

Examples
p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'

Data structure
An array of the alphabet in alphabetical order
The original string split into an array of words

Algorithm
Create an array of the entire alphabet
Split the parameter string into an array of words
Initiailize highest scoring word, highest score
Loop through array of words
  Initiailize word score to 0
  Loop through chars in each word
    Add index + 1 to word score
  If word score > highest score
    highest score = word score
    highest scoring word = current word
Return highest scoring word

=end

def high(str)
  alphabet = [*'a'..'z']
  words = str.split(' ')
  highest_word = ""
  highest_score = 0
  words.each do |word|
    word_score = 0
    word.chars.each do |char|
      word_score += alphabet.index(char) + 1
    end
    if word_score > highest_score
      highest_score = word_score
      highest_word = word
    end
  end
  highest_word
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'