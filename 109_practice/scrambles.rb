=begin
Problem
Given two strings, determine if the second string can be formed using
  characters of the first string.
The characters used in the first string need not be adjacent.
Only lowercase letters will be given.
No punctuation or digits.

Input - Two strings
Output - A Boolean

Examples
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true

Data structure
No additional structures

Algorithm
Convert both strings to arrays
Loop through arr2
  For each char in arr2, remove that char from arr1
  If there isn't that char in arr1, return false
Return true
=end

def scramble(str1, str2)
  arr1 = str1.chars
  arr2 = str2.chars
  arr2.each do |char|
    if arr1.include? char
      arr1.delete_at(arr1.index(char))
    else
      return false
    end
  end
  return true
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true