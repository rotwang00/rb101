flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |toon| toon[0, 3]}

puts flintstones