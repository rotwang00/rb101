title = "Flintstone Family Members"

title_length = title.length

total_space = 40 - title_length

leading_space = total_space / 2

leading_space.times { title.prepend(" ")}

puts title
