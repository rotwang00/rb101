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
  p all_substrings
  all_substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]