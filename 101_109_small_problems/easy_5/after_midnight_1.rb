def time_of_day(num)
  string_array = [':']
  if num >= 0
    string_array.insert(0,(num/60%24).to_s)
    string_array.insert(-1,(num%60).to_s)
  else
    string_array.insert(0,(num/60%24).to_s)
    string_array.insert(-1,(num%60).to_s)
  end
  string_array.each do |char|
    if char.length == 1 && char.to_i.to_s == char
      char.insert(0,'0')
    end
  end
  string_array.join
end

# Test Cases
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# LS Answer
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

# Test Cases
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# FURTHER EXPLORATION
# How would you approach this problem if you were allowed to use ruby's
# Date and Time classes? Suppose you also needed to consider the day of week?
# (Assume that delta_minutes is the number of minutes before or after midnight
# between Saturday and Sunday; in such a method, a delta_minutes value of -4231
# would need to produce a return value of Thursday 01:29.)
