def get_grade(score_one, score_two, score_three)
  mean_score = (score_one + score_two + score_three)/3
  if mean_score >= 90
    "A"
  elsif mean_score >= 80 && mean_score < 90
    "B"
  elsif mean_score >= 70 && mean_score < 80
    "C"
  elsif mean_score >= 60 && mean_score < 70
    "D"
  else
    "F"
  end
end

# Test Cases
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

## LS Answer
def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end
