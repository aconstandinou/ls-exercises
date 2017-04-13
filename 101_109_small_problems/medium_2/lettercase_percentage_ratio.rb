LOWER_CASE = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
UPPER_CASE = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

def letter_percentages(string)
  character_split = string.split('')
  lower_case = 0.0
  upper_case = 0.0
  other_case = 0.0
  character_split.each do |char|
    if LOWER_CASE.include?(char)
      lower_case += 1
    elsif UPPER_CASE.include?(char)
      upper_case += 1
    else
      other_case += 1
    end
  end
  total = lower_case + upper_case + other_case
  lower_case_perc = (lower_case/total*100)
  upper_case_perc = (upper_case/total*100)
  other_case_perc = (other_case/total*100)
  {lowercase: lower_case_perc, uppercase: upper_case_perc, neither: other_case_perc}
end

# Test Cases
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
