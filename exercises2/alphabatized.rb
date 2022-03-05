=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a string, remove all whitespace and punctuation, then alphabatize the remaining letters
This alphatization should ignore case, and leave letters in the order in which
  they appear.

"A b B a" => "AabB"
The whitespace is removed, then the letters placed in alphabetical order, leaving case as is.

The string could be empty or contain only whitespace.

Inputs: A string
- Data types always the same?
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
- Validate input?

Outputs: A string
- Print or return? Return new object or mutate existing?
- Does element order matter?
- How to handle duplicates?

Explicit Requirements
- 

Implicit Requirements - Review problem and examples
- 


E: Examples, Test Cases, Edge Cases
------------------------------------------
p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z")
== "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ

D: Data Structure
---------------------
Input: string
Intermediate: array
Output: string


A: Algorithm
----------------
Pseudo-code:
Convert parameter string to array: input
Create an array of all the lower and uppercase letters: letters
Iterate through input |char|
  Select all chars found in letters into new array: cleaned
Sort cleaned using sort to work with lowercase version of each char to new array: sorted
Join chars in sorted and return them

Helper method(s):


C: Code
---------
=end

def alphabetized(str)
  input = str.chars
  letters = [*"a".."z"] + [*"A".."Z"]
  cleaned = input.select do |char|
    letters.include? char
  end
  sorted = cleaned.sort do |a, b|
    a.downcase <=> b.downcase
  end
  sorted.join("")
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
# p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z")
# == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ
