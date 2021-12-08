def after_midnight(time)
  hours_str, min_str = time.split(":")
  hours = hours_str.to_i % 24
  (hours * 60) + min_str.to_i
end

def before_midnight(time)
  delta_minutes = 1440 - after_midnight(time)
  delta_minutes = 0 if delta_minutes == 1440
  delta_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0