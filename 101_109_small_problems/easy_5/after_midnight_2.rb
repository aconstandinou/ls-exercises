MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(twenty_four_hour_string)
  hours = twenty_four_hour_string[0..1].to_i
  mins = twenty_four_hour_string[-2..-1].to_i
  (hours * MINUTES_PER_HOUR + mins) % MINUTES_PER_DAY
end

def before_midnight(twenty_four_hour_string)
  hours = twenty_four_hour_string[0..1].to_i
  mins = twenty_four_hour_string[-2..-1].to_i
  if hours == TWENTY_FOUR || hours == ZERO
    ZERO + mins
  else
    ((TWENTY_FOUR - hours - 1)*MINUTES_PER_HOUR) + (MINUTES_PER_HOUR - mins)
  end
end
# Test Cases

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
