def crunch(str)
  normal = ""
  str.chars.each do |char|
    if char != normal[-1] 
      normal += char
    end
  end
  normal
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''