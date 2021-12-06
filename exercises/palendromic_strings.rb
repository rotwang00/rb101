def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  string.downcase!
  string.gsub!(/[^0-9a-z]/i, '')
  string == string.reverse
end


puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
