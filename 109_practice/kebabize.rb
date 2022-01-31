# Problem
# Given a string in camelCase, convert it to kebab-case
# Input - a string in camel case
# Output - a string in kebab case
# Digits should be ommitted
# There will be no punctuation in the original string
#
# Examples
# kebabize('camelsHaveThreeHumps') // camels-have-three-humps
# kebabize('camelsHave3Humps') // camels-have-humps
# 
# Data structure
# The original and return strings
#
# Algorithm
# Initialize the kebab case string
# Analyze each character of the camel case string left to right
# If the character is lowercase, add it to the kebab string
# If the character is a digit, ignore it
# If the character is uppercase, add a hyphen and a lowercase version to the kebab string
# Return the kebab string

def kebabize(camel)
  kebab = ""
  camel.chars.each do |char|
    if ("a".."z").include? char
      kebab << char
    elsif ("A".."Z").include? char
      kebab << "-" << char.downcase
    end
  end
  p kebab
  kebab
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'