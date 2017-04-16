def reversed_number(num_integer)
  string_version = num_integer.to_s.reverse
  string_version.to_i
end

# Test Cases
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1
