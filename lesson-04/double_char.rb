def repeater(str)
  doubled = ""
  str.chars.each { |char| 2.times { doubled += char }}
  doubled
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''