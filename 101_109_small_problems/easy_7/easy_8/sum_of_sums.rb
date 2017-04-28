def sum_of_sums(array)
  total_sum = 0
  array.each_with_index do |value, idx|
    total_sum += array[0..idx].inject(0, :+)
  end
  total_sum
end

# Test Cases

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
