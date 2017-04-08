def twice(num)
  num_string = num.to_s
  array1 = num_string.slice(0, num_string.length/2)
  array2 = num_string.slice(num_string.length/2, num_string.length)
  return num if array1 == array2
  return num * 2
end

# Test Cases
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
