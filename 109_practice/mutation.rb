array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

puts "array1 objectID = #{array1.object_id}"
puts "array2 objectID = #{array2.object_id}"


puts "array1[0] objectID = #{array1[0].object_id}"
puts "array2[0] objectID = #{array2[0].object_id}"