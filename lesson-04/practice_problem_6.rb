flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.find { |value| value[0, 2] == "Be" }