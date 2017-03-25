def reverse!(array)
  array_len = array.length
  count = 0
  loop do
    array.insert( (count*-1)-1, array[count] )
    break if count == array_len
    count += 1
  end
  array.slice!(0..array_len)
  array
end

# Test Cases
list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!([]) # => []
list == []

# LS Version
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end
