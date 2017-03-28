def show_multiplicative_average(array)
  x = 1.0
  array.each do |num|
    x *= num
  end
  x = x / array.size
  puts "The result is %0.3f" % x
end

# Test Cases
show_multiplicative_average([3, 5]) # The result is 7.500
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # The result is 28361.667
