def halvsies(array)
  array1 = []
  array2 = []
  if array.size.odd?
    midpoint = array.size / 2
  else
    midpoint = array.size / 2 - 1
  end

  array.each_index do |idx|
    if idx <= midpoint
      array1 << array[idx]
    else
      array2 << array[idx]
    end
  end

  return array1, array2
end

# Test Cases
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# Interesting Student Answer
def halvsies(array)
  splitpoint = (array.size / 2.0).ceil
  [array[0...splitpoint], array[splitpoint...array.size]]
end
