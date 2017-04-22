DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_signed_integer(string)
  value = 0
  if DIGITS.include?(string[0])
    digits = string.chars.map { |char| DIGITS[char] }
    digits.each { |digit| value = 10 * value + digit }
  else
    string2 = string[1..-1]
    digits = string2.chars.map { |char| DIGITS[char] }
    digits.each { |digit| value = 10 * value + digit }
  end
  string[0] == '-' ? value * -1 : value
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
