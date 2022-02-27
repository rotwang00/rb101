=begin
Problem
Given a string, return the same string with any spelled-out digits
  replaced with actual digits.
Input: A string
Output: The same string, modified

Examples
word_to_digit('Please call me at five five five one two three four. Thanks.') == 
  'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data structures
A hash with spelled-out digits as keys and digits (as strings) as values.

Algorithm
Create lookup hash with spelled-out numbers as keys and digit strings as values
Iterate through the hash
  If the sentence contains the key, replace it with the value
Return the sentence

=end

def word_to_digit(sentence)
  digits = {
    'zero' => '0',
    'one' => '1',
    'two' => '2',
    'three' => '3',
    'four' => '4',
    'five' => '5',
    'six' => '6',
    'seven' => '7',
    'eight' => '8',
    'nine' => '9'
  }

  digits.each do |word, digit|
    sentence.gsub!(word, digit)
  end
  p sentence
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
