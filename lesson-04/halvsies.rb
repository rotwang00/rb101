def halvsies(arr)
  half = arr.size / 2
  extra = arr.size % 2
  arr1 = arr[0, half + extra]
  arr2 = arr[half + extra, half]
  result = [arr1, arr2]
  p result
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]