=begin
Problem
Given a string, find the longest substring that's in alphabetical order.
The string will be at least one char long.
The string will consist of only lowercase letters.

Examples
p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

Data structures
An array version of the parameter string

Algorithm

Bigger picture
Loop through array of chars.
If a longer alphabetical substring is discovered, remember it.

Smaller Picture
Convert parameter into array of chars
Initiailize max_substring
Initiailize current_substring
Loop through array with #.each_with_index
  Add char to current_substring
  If next char is not less than current char, keep going with "next"
  Else
    If current_substring is longer than max_substring, replace max_substring
    Reset current_substring to ""
=end

def longest(str)
  arr = str.chars
  max_substring = []
  current_substring = []
  arr.each_with_index do |char, i|
    if i == str.size - 1
      p max_substring.join
      return max_substring.join
    end
    current_substring << char
    if char <= arr[i + 1]
      next
    end
    if current_substring.size > max_substring.size
      max_substring = current_substring
    end
    current_substring = []
  end
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'