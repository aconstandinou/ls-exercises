DIGIT_HASH = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
              "6" => 6, "7" => 7, "8" => 8, "9" => 9}

def string_to_integer(string)
  string_array = string.split(//)
  num_array = []
  string_array.each do |char|
    num_array << DIGIT_HASH[char]
  end
  num_array.inject{ |a, i| a * 10 + i }
end

# Test Cases
string_to_integer('4321') == 4321
string_to_integer('570') == 570

# What is happening within num_array.inject{ |a, i| a * 10 + i }
# example
# 10 * 0 + 4 -> 4
# 10 * 4 + 3 -> 43
# 10 * 43 + 1 -> 431
