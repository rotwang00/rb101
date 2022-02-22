=begin
Problem
Given a string, return a string consisting of each letter's position in
the alphabet (a = 1, b = 2, etc.)
Ignore non-letter characters and spaces
Case is irrelevant
There should be spaces between the numbers, but not at the start or end of
the string.

Examples
"abba" => "1 2 2 1"
"The sunset sets at twelve o' clock.") => "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5
15 3 12 15 3 11"
"-.-'" => ""

Data structures
The parameter string
An array of all the letters of the alphabet
The answer string

Algorithm
Create array of alphabet letters
Initiailize answer string
Downcase the parameter string
Iterate through parameter string by char
If char is in alpha array
  If answer string isn't empty, add a space
  Add index number + 1 to answer array
Return answer array

=end

def alphabet_position (str)
  alphabet = [*'a'..'z']
  answer = ""
  str.downcase.chars.each do |char|
    if alphabet.include? char
      if answer != ""
        answer = answer + ' ' + (alphabet.index(char) + 1).to_s
      else
        answer = answer + (alphabet.index(char) + 1).to_s
      end
    end
  end
  p answer
end


p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5
15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
p alphabet_position("abba") == "1 2 2 1"