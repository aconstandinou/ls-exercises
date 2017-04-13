def triangle_type(array)
  if array.all? { |val| val == array[0] }
    return :equilateral
  elsif array[1] == array[2]
    return :isosceles
  else
    return :scalene
  end
end

def triangle(side_one, side_two, side_three)
  triangle_array = [side_one, side_two, side_three].sort
  if triangle_array[0] + triangle_array[1] < triangle_array[2] ||
    triangle_array.any? { |val| val <= 0 }
    return :invalid
  else
    return triangle_type(triangle_array)
  end
end

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
