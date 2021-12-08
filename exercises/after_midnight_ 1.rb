def time_of_day(total_minutes)
  if total_minutes < 0
    while total_minutes <= -1440
      total_minutes += 1440
    end
    total_minutes *= -1
    hours, minutes = total_minutes.divmod(60)
    hours = 23 - hours
    minutes = 60 - minutes
  else
    while total_minutes >= 1440
      total_minutes -= 1440
    end
    hours, minutes = total_minutes.divmod(60)
  end
  return "#{"%02d" % hours}:#{"%02d" % minutes}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
