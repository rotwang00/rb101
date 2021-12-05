def age(name)
  puts "#{name} is #{rand(20..200)} years old!"
end

puts "What is the person's name?"

person = gets.chomp
person = "Teddy" if person.empty?
age(person)
