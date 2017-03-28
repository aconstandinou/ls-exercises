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

def palindrome?(string)
  array1 = string.split(//)
  array2 = string.split(//).reverse
  array1 == array2
end

def palindromes(string)
  string_array = substrings(string)
  palindrome_array = []
  string_array.each do |string|
    if palindrome?(string) && string.size > 1
      palindrome_array << string
    end
  end
  palindrome_array
end


palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
