NUMBER_HASH = {'one'=> '1', 'two'=> '2', 'three'=> '3', 'four'=> '4',
               'five'=> '5', 'six'=> '6', 'seven'=> '7', 'eight'=> '8',
               'nine'=> '9'}

def word_to_digit(string)
  string_array = string.split
  string_array.each do |char|
    if NUMBER_HASH.include?(char)
      char.gsub!(char, NUMBER_HASH)
    end
  end
  string_array.join(' ')
end

word_to_digit('Please call me at five five five one two three four. Thanks.') ==
              'Please call me at 5 5 5 1 2 3 4. Thanks.'

# LS Answer
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

#NOTES
# Within our word_to_digit method, we want to make sure that all words, zero to
# nine are converted to digits. So, let's iterate through all the values we want
# to replace, and then within our iterator we can replace all instances of the
# current word with the corresponding digit.

# To replace all instances of a word, we can use the gsub! method. In this case,
# we use regex to look for a word in the string passed in and replace it with
# the corresponding digit. The word to look for is interpolated into the regex,
# /\b#{word}\b/. \b is used to make sure that separate strings and not substrings
# are replaced within words. For instance, if the phrase/sentence passed into this
# method has the word "freight" in it, then that word will be left alone.
# Without using \b, the word "freight" would become "fr8".
