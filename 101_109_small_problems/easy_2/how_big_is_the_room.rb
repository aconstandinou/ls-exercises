SQUARE_FEET = 10.7639

def room_measure()
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f
  area = length * width
  feet_area = area * SQUARE_FEET
  puts "The area of the room is #{area} square meters (#{feet_area} square feet)."
end

room_measure
