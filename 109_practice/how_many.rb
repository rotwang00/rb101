def count_occurrences(arr)
  counts = {}
  arr.each do |elem|
    if counts.has_key? elem
      counts[elem] += 1
    else
      counts[elem] = 1
    end
  end
  counts.each do |k, v|
    puts "#{k} => #{v}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
