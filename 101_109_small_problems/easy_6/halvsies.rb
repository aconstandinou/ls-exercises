def halvsies(array)
  new_array = []
  num_ele = array.length
  if num_ele == 0
    new_array = [[],[]]
  elsif num_ele == 1
    new_array = [array,[]]
  else
    array.each_slice((num_ele/2.to_f).ceil) { |a| new_array << a }
  end
  new_array
end

# Test Cases

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# LS used slice to put together the arrays
def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  # array slice can also take (start, length)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end
