def sequence(count, f_sequence)
  array = []
  (1..count).each do |n|
    array << n * f_sequence
  end
  array
end


# Test Cases
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
