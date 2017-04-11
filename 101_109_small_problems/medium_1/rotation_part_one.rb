def rotate_array(orig_array)
  to_mutate = []
  orig_array.each { |ele| to_mutate << ele}
  ele_to_move = to_mutate.shift
  to_mutate = to_mutate + [ele_to_move]
  to_mutate
end

# Test Cases
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
