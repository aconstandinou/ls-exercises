input - array
out - array containing elements index 0-2-4, etc

arrays, can use map since it will give us a new array with the proper reqs.

def oddities(array)
  array.select.each_with_index { |val, idx| idx.even? }
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

# LS answer
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
