sorted = arr = ['10', '11', '9', '7', '8'].sort do |a, b|
  b.to_i <=> a.to_i
end
 p sorted
 