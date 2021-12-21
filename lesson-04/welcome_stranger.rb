def greetings(arr, hsh)
  full_name = arr.join(" ")
  puts "Hello, #{full_name}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })