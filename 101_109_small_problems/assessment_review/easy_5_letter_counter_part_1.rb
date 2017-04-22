def word_sizes(string)
  array = string.split(' ')
  hash = Hash.new(0) #forces any ref to non-existing keys in hash to return 0.
  array.each { |word| hash[word.length] += 1 }
  hash
end


# Test Cases
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
