CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  string_array = string.split('')
  result = []
  no_double = [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "0",
                "a", "e", "i", "o", "u", " ", "-", "=", "!", ".",
                "?" ]
  string_array.each do |char|
    if CONSONANTS.include?(char.downcase)
      result << char << char
    else
      result << char
    end
  end
  result.join
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
