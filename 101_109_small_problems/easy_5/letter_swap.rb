def swap(string)
  word_array = string.split(" ")
  word_array.map do |word|
    first_letter = word[0]
    last_letter = word[-1]
    word[0] = last_letter
    word[-1] = first_letter
  end
  word_array.join(" ")
end

# Test Cases
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
