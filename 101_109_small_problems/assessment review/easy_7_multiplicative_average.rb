def show_multiplicative_average(array)
  multiplicative_num = 1.0
  array.each { |num| multiplicative_num*= num }
  multiplicative_num = (multiplicative_num / array.size).round(3)
  puts format('%.3f', multiplicative_num)
end

# Test Cases
show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667
