ACCEPTED_CHARS = %w( a b c d e f g h i j k l m n o p q r s t u v w x y z )

def cleanup(string)
  new_string = ''
  string.each_char do |char|
    if ACCEPTED_CHARS.include?(char.downcase)
      new_string << char
    else
      new_string << ' '
    end
  end
  new_string.squeeze(' ')
end

# Test Case

cleanup("---what's my +*& line?") == ' what s my line '
