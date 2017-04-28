NUM_LIST = %w(1 2 3 4 5 6 7 8 9)

def reversed_number(num)
  num_array = num.to_s.split('')
  new_num_array = []
  num_array.each do |numz|
    if NUM_LIST.include?(numz)
      new_num_array.unshift(numz)
    end
  end
  new_int = new_num_array.join.to_i
end

# Test Cases
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1

# One liner version
def reversed_number(num)
  digits = num.to_s.reverse.to_i
end
