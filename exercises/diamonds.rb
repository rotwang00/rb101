def diamond(size)
  half = size / 2
  shape = []
  size.times do |index|
    string = ""
    string += " " * (half - index).abs
    string += "*" * (size - (2 * (half - index).abs))
    shape << string
  end
  shape.each { |str| puts str }
end

diamond(1)
