vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def count_occurrences(array)
  result = {}
  array.each do |x|
    x.downcase!
    if result.has_key?(x)
      result[x] += 1
    else
      result[x] = 1
    end
  end
  return result
end

puts count_occurrences(vehicles)