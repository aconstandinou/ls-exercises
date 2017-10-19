# test was calling our class as: 2.to_roman
# what is this?
# in irb, if you try 1.class it returns Fixnum class
# therefore, we need to define our class name as Fixnum and note, this is dangerous
# as we re-define the Fixnum class in this case, although we may know we did that
# a future user may not. Something to consider.

class Fixnum

  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  def to_roman
    roman_numeral = ''
    number = self
    ROMAN_NUMERALS.each do |k, v|
      roman_freq = k
      num_of_letters = number / v
      roman_numeral += roman_freq * num_of_letters
      number -= (num_of_letters * v) # our number left over
    end
    roman_numeral
  end

end
