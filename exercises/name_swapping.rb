def swap_name(str)
  name = str.split
  p name[1] + ", " + name[0]
end

p swap_name('Joe Roberts') == 'Roberts, Joe'