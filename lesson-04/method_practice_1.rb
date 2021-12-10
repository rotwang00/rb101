[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Return value of the block is 'hi', which is truthy.
# Therefore, return value of the method is [1, 2, 3]
