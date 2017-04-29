# input:
# method return:


def not_identical_num(number)
  number_array = number.to_s.split('')
  number_array == number_array.uniq
end

def featured(number)
  counter = number + 1

  loop do
    if counter % 7 == 0 && counter.odd?
      identical = not_identical_num(counter)
      break if identical
      counter += 1
    elsif counter >= 9_999_999_999
      return 'Error no such featured number exists'
    else
      counter += 1
    end
  end

  counter
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# balancer problem

def balancer(string)
  return false unless string.count('(') == string.count(')')

  paren_count = 0
  string.split('').each do |char|
    paren_count += 1 if char == '('
    paren_count -= 1 if char == ')'
    return false if paren_count < 0
  end
  true
end

p balancer('()()()()')
p balancer('()()()))')
p balancer('he()ll(')

# remove all vowels from string, then remove all non-alphanumeric chars from array of strings

def remove_vowels(string)
  array_string = string.split('')
  array_string.each do |char|
    char.gsub!(/[aeiou]/i, "")
  end

  array_string.join
end

def remove_nonalpha(array_string)
  array_string.each do |word|
    word.gsub!(/[^a-zA-Z0-9]/i, "")
  end

  array_string
end

remove_vowels("hello world, how are you doing today?")
remove_nonalpha("he!!o wor!d, how? @re you do#ng tod@y 1999?".split(' '))
