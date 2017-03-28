def penultimate(string)
  string_array = string.split(' ')
  string_array[-2]
end

# Test Cases
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
