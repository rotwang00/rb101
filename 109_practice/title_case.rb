=begin
Problem
Given a string, write a function to convert the string to title case.
The first word is always capitalized
Most other words are capitalized
There will be an optional list of exceptions, small words that should be lowercase.
The parameter string could be a mix of uppercase and lowercase words.
Input - A string
Output - A string in title case

Examples
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'

Data structure
The original string
The original string turned into an array
The optional minor words string, and its array version
The answer array
The string version of the answer array

Algorithm
Accept parameters with splat operator
Split array into separate strings, if necessary
Split strings into arrays
Capitalize every word in main string
Un-capitalize every minor word, except the first word
Join main string
=end

def title_case(*params)
  original_title = params[0].split
  if params.size == 2
    minor_words = params[1].split
  end
  capital_original_title = original_title.map do |word|
    word.capitalize
  end
  return capital_original_title.join(' ') if !minor_words
  if capital_original_title.size == 1
    return capital_original_title
  end
  capital_original_title.each_with_index do |word, i|
    next if i == 0
    if minor_words.include? word.downcase
      capital_original_title[i].downcase!
    end
  end
  capital_original_title.join(" ")
end

p title_case('a clash of KINGS', 'a an the of')
p title_case('THE WIND IN THE WILLOWS', 'The In')
p title_case('the quick brown fox')