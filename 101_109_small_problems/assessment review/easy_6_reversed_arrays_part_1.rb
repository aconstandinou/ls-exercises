def reverse!(array)
  neg_index = 0
  (0..array.size/2 - 1).each do |num|
    neg_index -= 1
    array[num], array[neg_index] = array[neg_index], array[num]
  end
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
