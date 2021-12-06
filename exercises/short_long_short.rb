def short_long_short(str1, str2)
  if (str2.size < str1.size) 
    str1, str2 = str2, str1
  end
  return str1 + str2 + str1
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"