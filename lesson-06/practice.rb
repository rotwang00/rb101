def odd_count n 
  count = 0
  num = 1
  loop do
    count += 1
    num += 2
    break if num >= n
  end
  return count
end

p odd_count(15023)
