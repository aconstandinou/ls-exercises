def gregorian_calendar(number)
  if number % 4 == 0 && number % 100 != 0
    true
  elsif number % 4 == 0 && number % 100 == 0 && number % 400 == 0
    true
  else
    false
  end
end

def julian_calendar(number)
  if number % 4 == 0
    true
  else
    false
  end
end

def leap_year?(number)
  if number >= 1752
    gregorian_calendar(number)
  else
    julian_calendar(number)
  end
end

# Test cases

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true
