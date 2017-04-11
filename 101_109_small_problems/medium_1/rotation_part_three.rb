def rotate_rightmost_digits(number, count)
  array = number.to_s.split('')
  ele_to_move = array.delete_at(count * -1)
  array = array + [ele_to_move]
  array.join.to_i
end

def max_rotation(number)
  start = number.to_s.length
  counter = start
  loop do
    break if counter == 1
    number = rotate_rightmost_digits(number, counter)
    counter -= 1
  end
  number
end

# Test Cases
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
