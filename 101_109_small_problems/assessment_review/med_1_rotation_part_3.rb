def rotate_rightmost_digits(int_num, val_to_move)
  return int_num if val_to_move == 1
  int_num_str = int_num.to_s
  num_to_move = int_num_str[-val_to_move]
  int_num_str = int_num_str[0..-val_to_move - 1] + int_num_str[-val_to_move + 1..-1] + num_to_move
  int_num_str.to_i
end

def max_rotation(number)
  counter = number.to_s.length
  loop do
    number = rotate_rightmost_digits(number, counter)
    counter -= 1
    break if counter == 0
  end
  number
end


# Test Cases
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
