def toggle_lights(num)
  if (!num.is_a? Integer) || num < 1
    return []
  end

  lights = Array.new(num, -1)
  step = 1
  i = step

  num.times do
    loop do
      lights[i - 1] = -lights[i - 1]
      i += step
      break if i > num
    end
    step += 1
    i = step
  end
  lights_on = []
  lights.each_with_index do |light, index|
    if light == 1
      lights_on << index + 1
    end
  end
  output_in_english(lights_on, num)
  return lights_on
end

def output_in_english(light, n)
  dark = []
  (1..n).each_with_index do |element, index|
    if !light.include? (index + 1)
      dark << (index + 1)
    end
  end
  
  dark_size = dark.size
  print "Lights "
  dark.each_with_index do |element, index|
    if index == dark_size - 1
      print "and #{element} are now off.\n"
    else
      print "#{element}, "
    end
  end

  light_size = light.size
  light.each_with_index do |element, index|
    if index == light_size - 1
      print "and #{element} are on.\n"
    else
      print "#{element}, "
    end
  end
end

toggle_lights(10)