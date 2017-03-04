def reverse_sentence(string)
  string_array = string.split(' ')
  string_array.reverse!
  new_string = string_array.join(" ")
  new_string
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
