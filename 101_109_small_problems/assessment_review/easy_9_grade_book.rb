def get_grade(grade_one, grade_two, grade_three)
  average = (grade_one + grade_two + grade_three)/3.0
  case average
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else
    'F'
  end
end

# Test Cases
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
