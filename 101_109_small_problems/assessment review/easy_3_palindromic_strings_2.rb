ACCEPTED_CHARS = %w( a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2
                    3 4 5 6 7 8 9 )

def real_palindrome?(string)
  array1 = []
  string.each_char do |char|
    if ACCEPTED_CHARS.include?(char.downcase)
      array1 << char.downcase
    end
  end
  array2 = array1.reverse
  array1 == array2 ? true : false
end

# Test Cases
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
