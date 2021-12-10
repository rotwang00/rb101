def sum_of_row(row_number)
  row_start_number = (row_number ** 2) - row_number + 2
  sum = 0
  position_in_row = 0
  while position_in_row < row_number
    sum += row_start_number + (2 * position_in_row)
    position_in_row += 1
  end
  sum
end

puts sum_of_row(5)
