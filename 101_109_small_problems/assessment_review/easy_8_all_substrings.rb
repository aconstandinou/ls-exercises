def substrings(string)
  substring_array = []
  string_char = string.split('')
  outer_counter = string.size

  string_char.each_index do |idx|
    counter = idx
    (outer_counter).times do
      substring_array << string[idx..counter]
      counter += 1
    end
    outer_counter -= 1
  end

  substring_array
end



# Test Cases
substrings('abcde') == ['a', 'ab', 'abc', 'abcd', 'abcde',
                        'b', 'bc', 'bcd', 'bcde',
                        'c', 'cd', 'cde', 'd', 'de',
                        'e']


# LS Answer

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end


substrings('abcde') == ['a', 'ab', 'abc', 'abcd', 'abcde',
                        'b', 'bc', 'bcd', 'bcde',
                        'c', 'cd', 'cde', 'd', 'de',
                        'e']
