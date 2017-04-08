# input: string of words
# output: array where each element equals: word + space + word.length

def word_lengths(string)
  string_array = string.split(' ')
  new_array = []
  string_array.each do |word|
    new_word = word + ' ' + word.length.to_s
    new_array << new_word
  end
  new_array
end

# Test Cases
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

# LS Answer
def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end
