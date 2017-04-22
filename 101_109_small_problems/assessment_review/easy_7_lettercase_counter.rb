LOWERCASE = %w( a b c d e f g h i j k l m n o p q r s t u v w x y z )
UPPERCASE = %w( A B C D E F G H I J K L M N O P Q R S T U V W X Y Z )

def letter_case_count(string)
  hash = {:lowercase => 0, :uppercase => 0, :neither => 0}
  string.each_char do |char|
    if LOWERCASE.include?(char)
      hash[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash
end

# Test Cases
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# LS Answer
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

# Test Cases
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
