=begin
Problem
Given two strings, how many letters must you remove from them
to make them anagrams of each other?
"codewars" and "hackerrank" have c, e, a, and r in common,
so 10 letters total must be removed.
All input will be lowercase.
Empty strings are anagrams of each other.
Repeated letters matter. If a letter appears two times in the first word and
one time in the second word, you must remove one of the occurrences from the 
first word. The return value of 'aab' and 'a' would be 2.

Examples
p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10

Data structures
The two parameter strings
Array versions of the two parameter strings
An array of all the letters in common

Algorithm
Count the letter occurences in arr1 and store the results in a hash {"a" => 2, "b" => 1}
Do the same for arr2
Remove all characters common to both hashes
Return the total number of chars left in both hashes
=end

def anagram_difference(str1, str2)
  counts1 = {}
  str1.chars.each do |char|
    if counts1.key? char
      counts1[char] += 1
    else
      counts1[char] = 1
    end
  end
  counts2 = {}
  str2.chars.each do |char|
    if counts2.key? char
      counts2[char] += 1
    else
      counts2[char] = 1
    end
  end
  counts1.each do |k, v|
    if counts2.key? k
      num_in_common = [v, counts2[k]].min
      counts1[k] -= num_in_common
      counts2[k] -= num_in_common
    end
  end
  non_common = 0
  counts1.each do |_, v|
    non_common += v
  end
  counts2.each do |_, v|
    non_common += v
  end
  non_common
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10

