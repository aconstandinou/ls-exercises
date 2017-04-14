def running_total(array)
  start_sum = 0
  new_array = []
  array.each do |num|
    new_array << num + start_sum
    start_sum += num
  end
  new_array
end

# Test Cases
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# LS Answer
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

# Note
# the map method will accumulate the return of its block
# in this case, the block returns sum + value, where value is each element in
# the array
