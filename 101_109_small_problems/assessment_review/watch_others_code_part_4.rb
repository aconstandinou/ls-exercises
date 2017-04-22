# Problem 1: calculate number of Friday the 13ths in a year
# Problem 2: generate random English mathematical phrases
# Problem 3: further below

# -----------------------------------------------------------------------
# Warm-Up: method that takes single string argument, returns a new string
#           that contains original value of argyment, but first letter of every
#           is now capitalized. Only consider first character

def word_cap(string)
  string_array = string.split(' ')
  string_array.each do |word|
    word.capitalize!
  end
  string_array.join(' ')
end

# Test Cases
word_cap('four score and seven')
word_cap('the javaScript language')
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# -----------------------------------------------------------------------
# Problem 1: write method that returns the number of Friday the 13ths in a given
#            year passed in as an argument. Year is greater than 1752
#           Ruby's Date class can be helpful

require 'date'

def friday_13th?(year)
  count = 0
  (1..12).each do |mth|
    if Date.new(year,mth,13).friday?
      count += 1
    end
  end
  count
end

# Test Cases
friday_13th?(2015)
friday_13th?(1986)

# -----------------------------------------------------------------------
# Problem 2: write method that will generate random english math problems
#           the method should take a length, return math pgrase with that
#           many operations

NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = %w(plus minus times divided)

def mathphrase(x)
  string = []
  x.times do |num|
    string << NUMBERS.sample
    string << OPERATORS.sample
  end
  string << NUMBERS.sample
  string.join(' ').gsub("divided", "divided by")
end

# Test Cases
mathphrase(1) #-> "five minues two"
mathphrase(2) #-> 'two plus three times eight'
mathphrase(3) #-> 'one divided by three plus five times zero'

# -----------------------------------------------------------------------
# Problem 3: based on problem 2, this time generate a mathphrase using a
#            random integer, to generate sentence

def random_mathphrase
  x = rand(1..20)
  mathphrase(x)
end

counter = 0
loop do
  p random_mathphrase
  counter += 1
  break if counter == 10
end
