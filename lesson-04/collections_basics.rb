str = "joe's favorite color is blue"
arr = str.split(' ').map do |word|
  word.capitalize
end
str = arr.join(" ")

puts str

hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh[:carrot] = "Vegetable"
hsh[:pear] = "Fruit"
hsh[:broccoli] = "vegetable"
puts hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }