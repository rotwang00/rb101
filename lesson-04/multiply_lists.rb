# def multiply_list(arr1, arr2)
#   counter = 0
#   new_arr = []
#   while counter < arr1.size
#     new_arr << arr1[counter] * arr2[counter]
#     counter += 1  
#   end
#   new_arr
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr[0] * arr[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]