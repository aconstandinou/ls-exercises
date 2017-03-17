def palindrome?(string)
  array1 = string.split(//)
  array2 = string.split(//).reverse
  array1 == array2
end

# test cases
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
