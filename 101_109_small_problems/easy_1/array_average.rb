def average(array)
  total_sum = 0
  array.each do |num|
    total_sum += num
  end
  total_sum/array.count
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
