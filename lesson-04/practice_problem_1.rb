flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flint_hash = {}
flintstones.each_with_index do |toon, i|
  flint_hash[toon] = i
end

puts flint_hash