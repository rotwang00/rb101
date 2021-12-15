def leading_substrings(str)
  counter = 1
  answer = []
  while counter <= str.size
    answer << str[0, counter]
    counter += 1
  end
  answer
end

def substrings(str)
  counter = 0
  all_substrings = []
  while counter <= str.size
    all_substrings += leading_substrings(str[counter, str.size - counter + 1])
    counter += 1
  end
  all_substrings
end

def palindromes(str)
  all_substrings = substrings(str)
  palindromes = all_substrings.select do |s|
    (s == s.reverse) && (s.size > 1)
  end
  p palindromes
  palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
