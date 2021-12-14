def triangle(num_stars)
  counter = 1
  while counter <= num_stars
    (num_stars - counter).times { print " " }
    counter.times { print "*" }
    puts ""
    counter += 1
  end
end

triangle(9)