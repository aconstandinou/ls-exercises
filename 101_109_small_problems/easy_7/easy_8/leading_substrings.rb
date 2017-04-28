def substrings_at_start(string)
  string_array = []
  character_array = string.split('')
  character_array.each_with_index do |char, idx|
    string_array << character_array[0..idx].join
  end
  string_array.sort_by! { |ele| ele.length }
end

# Test Cases
substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
