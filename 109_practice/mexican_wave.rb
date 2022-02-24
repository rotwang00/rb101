=begin
Problem
Given a string of lowercase letters and spaces,
create an array filled with versions of that string.
There will be as many elements in the array as there are letters in the string.
Each element of the array will have one uppercase letter.
The first element will have the first letter capitalized, the second
will have the second letter capitalized, and so on.
Spaces should be skipped, although they should still be in place.
An empty string should return an empty array.

Examples
wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs",
"codewarS"]
wave("") == []
wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs",
"two wordS"]
wave(" gap ") == [" Gap ", " gAp ", " gaP "]

Data structure
The parameter string
The answer array with versions of the parameter string

Algorithm
Return [] if parameter string is empty
Initialize the answer array `answer`
Convert parameter string to array of chars `chars`
Iterate through chars with each_with_index
  If char is a space, go to next iteration
  Else, capitalize char at index `i` and store resulting word in `answer`
Return answer

=end

def wave(str)
  return [] if str == ""
  answer = []
  chars = str.chars
  chars.each_with_index do |char, i|
    if char == " "
      next
    else
      chars[i].upcase!
      answer << chars.join("")
      chars[i].downcase!
    end
  end
  answer
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs",
"codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs",
"two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]