def substrings(string)
  string_array = []
  character_array = string.split('')
  counter = 0
  loop do
    character_array.each_with_index do |char, idx|
      if counter + idx < character_array.size
        string_array << character_array[counter..counter+idx].join
      end
    end
    counter += 1
    break if counter > character_array.size
  end
  string_array
end

# Test Case
substrings('abcde') == [ 'a', 'ab', 'abc', 'abcd', 'abcde',
                         'b', 'bc', 'bcd', 'bcde',
                         'c', 'cd', 'cde',
                         'd', 'de',
                         'e' ]
