=begin
Problem
Given two strings, determine if they are anagrams of each other.
Return true if so, false if not.
Anagrams are case insensitive.
The parameter strings can be mixed case.

Input: two strings
Output: a Boolean

Examples
p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false

Data structure
The two string parameters

Algorithm
Lowercase both strings
Convert both strings to arrays
Sort both arrays
Check to see if the arrays are equal
Return the result

=end

def is_anagram(str1, str2)
  str1.downcase.chars.sort == str2.downcase.chars.sort  
end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false