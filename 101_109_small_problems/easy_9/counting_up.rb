def sequence(num)
  array = []
  num.times do |int_num|
    array << int_num + 1
  end
  array
end

# Test Cases
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
