Problem
=======
Analyze a string and determine the percentage of characters that are lowercase, uppercase, and neither.

Input: a string with at least one character
Output: a hash with three keys, lowercase, uppercase, and neither.

Example
=======
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

Data structure
==============
The three-element hash, which will serve as the return value

Algorithm
=========
Create hash `percentages` with elements lowercase, uppercase, neither set to `0`
Run #each on string.chars with parameter `char`
  if (a..z).include? `char`
    lowercase += 1
  elsif (A..Z).include? `char`
    uppercase += 1
  else
    neither += 1
  end
Return hash

