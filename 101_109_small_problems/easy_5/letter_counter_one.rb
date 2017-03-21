def word_sizes(string)
  hash = Hash.new(0)
  string_array = string.split(" ")
  string_array.each { |word| hash[word.length] += 1 }
  hash
end

# Test Cases
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}


# NOTES
# The hash references the hash itself, and the key parameter is the missing
# key. With this, you can initialize default values in the hash before they get
# accessed. Here are a few interesting things you can do with a hash’s
# initialization block.

# this line of code: hash = Hash.new{ |h,k| h[k] = 0 }

# LS Note:
# we will get an exception the first time counts[word.size] += 1 is executed.
# This is because that element doesn't exist, so counts[word.size] returns nil,
# and nil cannot be added to 1. To fix this, we use the default value form of
# initializing counts:
# counts = Hash.new(0
