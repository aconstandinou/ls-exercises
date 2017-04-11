def rotate_rightmost_digits(number, count)
  array = number.to_s.split('')
  ele_to_move = array.delete_at(count * -1)
  array = array + [ele_to_move]
  array.join.to_i
end

# Test Cases
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
