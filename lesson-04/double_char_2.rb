CONSONANTS = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"

def double_consonants(str)
  doubled = ""
  str.chars.each do |char|
    if CONSONANTS.include? char
      doubled << char << char
    else
      doubled << char
    end
  end
  doubled
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
