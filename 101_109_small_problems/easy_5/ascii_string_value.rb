def ascii_value(string)
  if string.empty?
    0
  else
    array = string.bytes
    array.inject { |sum, n| sum + n }
  end
end


# Test Cases
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
