def digits(number)
  number.to_s.split("").map { |x| x.to_i}
end

p digits(13546)
