def reverse_words(string)
  string_array = string.split(' ')
  string_array.map do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  new_string = string_array.join(" ")
  new_string
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
