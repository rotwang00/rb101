def leading_substrings(str)
  counter = 1
  answer = []
  while counter <= str.size
    answer << str[0, counter]
    counter += 1
  end
  answer
end


