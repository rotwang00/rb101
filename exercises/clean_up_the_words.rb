def cleanup(str)
  cleaned = str.chars.map do |char|
    if ('a'..'z').include? char
      char
    else
      ' '
    end
  end
  cleaned = cleaned.join("")
  cleaned = cleaned.squeeze(" ")
  p cleaned
end

p cleanup("---what's my +*& line?") == ' what s my line '