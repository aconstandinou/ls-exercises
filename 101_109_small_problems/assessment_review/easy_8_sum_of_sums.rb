def sum_of_sums(array)
  running_sum = 0
  inner_idx = 1

  array.each do |ele|
    array[0..inner_idx-1].each do |ele2|
      running_sum += ele2
    end
    inner_idx += 1
  end
  running_sum
end

# Test Cases
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

# LS Answer - cleaner
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end
