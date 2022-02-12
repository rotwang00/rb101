=begin
Problem
Given an array, perform a bubble sort on it.
The sort will be in place. The original array will be mutated.
The array will have at least 2 elements.
The array can be integers or strings
A bubble sort makes multiple passes through the array.
  On each pass, each pair of consecutive elements is compared, and swapped if needed.
  If no swaps are made during a passes, the array is sorted.
Input - An array
Output - The same array, sorted

Examples
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

Data structure
The original array, which will mutated and serve as the return array
A swapped? flag

Algorithm
Get size of the array and store it
Start an infinite loop
  Set the swap flag to false
  Start a loop size - 1 times
    Compare two elements 
    SWap if needed
    If swapped, set swap flag to true
  If swap flag is false, return array
=end

def bubble_sort!(arr)
  n = arr.size
  loop do
    swapped = false
    (0..(n - 2)).each do |index|
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        swapped = true
        n = index + 1
      end
    end
    if swapped == false
      return arr
    end
  end
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)