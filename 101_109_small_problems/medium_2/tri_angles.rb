def triangle(angle_one, angle_two, angle_three)
  angle_array = [angle_one, angle_two, angle_three]
  if angle_array.inject(:+) != 180 || angle_array.any? { |val| val <= 0 }
    return :invalid
  else
    if angle_array.all? { |val| val < 90 }
      return :acute
    elsif angle_array.any? { |val| val > 90 }
      return :obtuse
    else
      return :right
    end
  end
end

# Test Cases
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

# LS Answer
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end
