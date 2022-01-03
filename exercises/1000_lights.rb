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

def output_in_english(lights, n)
  
end


p toggle_lights(10)