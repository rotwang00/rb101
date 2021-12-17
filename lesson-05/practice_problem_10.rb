data = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

data.map do |hsh|
  new_data = {}
  hsh.map do |k, v|
    new_data[k] = v + 1
  end
  p new_data
  new_data
end

