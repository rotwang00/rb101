def is_odd?(number)
  (number % 2).abs == 1
end

puts is_odd?(-3)
puts is_odd?(4)