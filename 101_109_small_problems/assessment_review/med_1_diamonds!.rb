def diamond(num)
  space = " "
  diamond = "*"
  new_line = "\n"
  string = ''
  (1..num).each do |ii|
    string << (diamond * num) + new_line
  end
  puts string
end

diamond(1)
diamond(3)
diamond(9)

# LS Answer
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(1)
diamond(3)
diamond(9)
