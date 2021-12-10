def select_letter(str, letter)
  result = ""
  str.chars.each do |char|
    if char == letter
      result += letter
    end
  end
  result
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""