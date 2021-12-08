def print_in_box(text)
  num_of_chars = text.size + 2
  bars(num_of_chars)
  space(num_of_chars)
  words(text)
  space(num_of_chars)
  bars(num_of_chars)
end

def bars(num_of_chars)
  print "+"
  num_of_chars.times { print "-"}
  print "+\n"
end

def space(num_of_chars)
  print "|"
  num_of_chars.times { print " "}
  print "|\n"
end

def words(text)
  print "| "
  print text
  print " |\n"
end

print_in_box('To boldly go where no one has gone before.')