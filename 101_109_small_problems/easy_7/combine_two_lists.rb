def interleave(array_1, array_2)
  count = 0
  new_array = []
  loop do
    new_array << array_1[count] << array_2[count]
    count += 1
    break if count == array_1.size
  end
  new_array
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
