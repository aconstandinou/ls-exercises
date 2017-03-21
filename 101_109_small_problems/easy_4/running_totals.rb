def running_total(array)
  sum = 0
  array.map do |num|
    sum += num
  end
end

# Test Cases
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# Further Exploration

# Array#each_with_object
def running_total(arr)
  arr.each_with_object([]) {|num, total| total << num + total.last.to_i }
end

# Test Cases
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
