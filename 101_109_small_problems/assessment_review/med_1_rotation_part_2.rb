def rotate_rightmost_digits(int_num, val_to_move)
  return int_num if val_to_move == 1
  int_num_str = int_num.to_s
  num_to_move = int_num_str[-val_to_move]
  int_num_str = int_num_str[0..-val_to_move - 1] + int_num_str[-val_to_move + 1..-1] + num_to_move
  int_num_str.to_i
end


# Test Cases
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

# LS Answer

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  # re-assigns the part of the array we want to rearrange
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end
