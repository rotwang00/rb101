=begin
Problem
Given a word and an array of words, determine which, if any,
of the words in the array are anagrams of the first word.
Return an array containing all the anagrams.
If there are none, return an empty array.
All words are lowercase letters only.
There is no punctuation, spaces, or digits.

Input: A string and an array of strings
Output: An array of strings, or an empty array

Examples
p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy', 'lacer']) == []

Data structures
The parameter string and array
The return array

Algorithm
Initiailize the answer array
Split into chars and sort the parameter string
Iterate through parameter array
  Split and sort each string
  If it's the same as the parameter string, place it in the answer string
Return answer string

=end

def anagrams(root_word, strings)
  anagrams = []
  sorted = root_word.chars.sort
  strings.each do |string|
    if string.chars.sort == sorted
      anagrams << string
    end
  end
  anagrams
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy', 'lacer']) == []
