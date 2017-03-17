def palindromic_number?(number)
  array1 = number.to_s.split(//)
  array2 = number.to_s.split(//).reverse
  array1 == array2
end

# test cases
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
