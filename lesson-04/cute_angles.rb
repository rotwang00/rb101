DEGREE = "\xC2\xB0"

def dms(angle)
  while angle > 360
    angle -= 360
  end
  degrees, fraction = angle.divmod 1
  minutes, seconds = (fraction * 3600).divmod 60
  answer = "#{degrees}#{DEGREE}#{'%02d' % minutes}'#{'%02d' % seconds.round(0)}\""
end

puts dms(93.034773)
# 76 43 48