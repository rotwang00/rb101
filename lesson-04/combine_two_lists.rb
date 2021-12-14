# def interleave(arr1, arr2)
#   counter = 0
#   combined = []
#   while counter < arr1.size
#     combined << arr1[counter]
#     combined << arr2[counter]
#     counter += 1
#   end
#   combined
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten!
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']