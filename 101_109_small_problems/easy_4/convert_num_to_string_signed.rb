DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end


# Test Cases
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

# Notes
# The expression number <=> 0 may look a bit odd; this is ruby's "spaceship"
# operator. It compares the left side against the right side, then returns +1
# if the left side is greater than the right, -1 if the left side is smaller
# than the right, and 0 if the values are the same. This is often useful when
# you need to know whether a number is positive, negative, or zero.
