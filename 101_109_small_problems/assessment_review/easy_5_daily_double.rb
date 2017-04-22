def crunch(string)
  string.squeeze
end

# Test Cases
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# Nice student solution
def crunch(word_string)
  arr = []
  word_string.chars.each { |word| arr << word if word != arr.last }
  arr.join
end
