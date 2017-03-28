MINUTES = 60
SECONDS = 60

def dms(float_num)
  angle = float_num.to_i
  remainder = float_num % 1
  minutes = (remainder * MINUTES).to_i
  seconds = (((remainder * MINUTES) % 1) * SECONDS).to_i
  string = "#{angle}°#{minutes}'#{seconds}\""
  # string = "#{angle}°%02d'%02d\"" % minutes, seconds
end

# Test Cases

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
