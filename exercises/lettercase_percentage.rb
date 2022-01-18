def letter_percentages(string)
  counts = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }
  
  string.chars.each do |char|
    if ('a'..'z').include? char
      counts[:lowercase] += 1
    elsif ('A'..'Z').include? char
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  size = string.size
  percentages = counts.map do |k, v|
    [k, (v.to_f * 100) / (size)]
  end
  percentages.to_h
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }