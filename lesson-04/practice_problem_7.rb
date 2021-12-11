statement = "The Flintstones Rock"

freq = Hash.new(0)
statement.chars.map { |char| freq[char] += 1 }

puts freq