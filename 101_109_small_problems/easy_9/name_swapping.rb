def swap_name(string_name)
  string_array = string_name.split
  return "#{string_array[-1]}, #{string_array[0]}"
end

# Test Case
swap_name('Joe Roberts') == 'Roberts, Joe'
