# Create a method that checks if a given string has equal parantheses '(' and ')'
# Bonus: ")hi(" needs to fail

# First version
def balancer(string)
  string.count('(') == string.count(')')
end

# Test Cases
balancer('he()llo') == true
balancer('or(ang))') == false
balancer('cross)(eyed') == true
balancer('bel((ieve') == false

# Bonus (TWO WAYS)
def balancer_sequenced(string)
  counter = 0
  (0..string.size - 1).each do |x|
    counter += 1 if string[x] == '('
    counter -= 1 if string[x] == ')'
    break if counter < 0
  end
  counter < 0 ? false : true
end

def balancer_sequenced(string)
  counter = 0
  string.each_char do |char|
    counter += 1 if char == '('
    counter -= 1 if char == ')'
    return false if counter < 0
  end
  true
end

balancer_sequenced('he()llo') == true
balancer_sequenced('or(ang))') == false
balancer_sequenced('cross)(eyed') == false
balancer_sequenced('bel()()ieve') == true


# PROBLEM 3
# write a method that takes two numbers (integers) and prints out all prime
# numbers in the range

def prime_checker(number)
  (2..number - 1).each do |divisor|
    if number % divisor == 0
      return false
    end
  end
  true
end

def find_prime(start, stop)
  (start..stop).select do |num|
    prime_checker(num)
  end
end

find_prime(3, 10) #=> 3, 5, 7
find_prime(5, 20)
find_prime(1, 2)
