def uppercase?(string)
  string_array = string.split('')
  string_array.each do |char|
    if char == char.upcase
      next
    else
      return false
    end
  end
  return true
end

# Test Cases
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

# LS Answer
def uppercase?(string)
  string == string.upcase
end
