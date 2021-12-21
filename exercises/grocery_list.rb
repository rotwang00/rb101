# def buy_fruit(arr)
#   list = []
#   arr.each do |sub_arr|
#     (1..sub_arr[1]).each do |_|
#       list << sub_arr[0]
#     end
#   end
#   p list
#   list
# end

def buy_fruit(arr)
  arr.map { |fruit, amount| [fruit] * amount }.flatten
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]