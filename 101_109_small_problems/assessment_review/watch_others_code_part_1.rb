# Problem 1: calculating primes
# Problem 2: finding sum or product of a series of numbers
# Problem 3: interleave two arrays

# -----------------------------------------------------------------------
# Problem 1: write a method that will determine whether an integer
#            is a prime number. Don't use prime class

def prime?(number)
  return false if number == 1 # guard clause
  (2..number - 1).each do |divisor|
    return false if number % divisor == 0
  end
  true
end

# Test Cases
prime?(3)
prime?(4)

# Problem 1 A: write a method (input is an array of nums) and only returns those
#           that are prime

def prime_array?(num_array)
  num_array.select do |num|
    prime?(num)
  end
end

# Test Cases
prime_array?([1, 2, 3, 4])
prime_array?([4, 6, 8, 10])

# Problem 1 B: return the number of primes within the array
def prime_array_count?(num_array)
  x = num_array.select do |num|
    prime?(num)
  end
  x.size
end

# Test Cases
prime_array_count?([1, 2, 3, 4])
prime_array_count?([4, 6, 8, 10])

# -----------------------------------------------------------------------
# Problem 2: prompt user for an integer greater than 0
#            prompt user for 's' for sum or 'p' for product
#            return 1..integer running sum or running product

def running_sum(int_num)
  total = 0
  (1..int_num).each do |num|
    total += num
  end
  puts "The sum from 1 to #{int_num} is #{total}"
end

def running_product(int_num)
  total = 1
  (1..int_num).each do |num|
    total *= num
  end
  puts "The product from 1 to #{int_num} is #{total}"
end

def big_method
  number_prompted = 0
  action_on_int = ''

  loop do
    puts "Please enter a number greater than 0"
    number_prompted = gets.chomp.to_i
    break if number_prompted > 0
    puts "Please enter a valid number."
  end

  loop do
    puts "Please 's' for sum and 'p' for product"
    action_on_int = gets.chomp
    break if action_on_int != 's' || action_on_int != 'p'
    puts "Please enter a valid choice."
  end

  if action_on_int == 's'
    running_sum(number_prompted)
  else
    running_product(number_prompted)
  end
end

big_method

# -----------------------------------------------------------------------
# Problem 3: write a method that combines two arrays in as arguments, returns
#            new array that contains all elements with the elements taken in
#            alternation.
#           Assumption: both arrays are non-empty and they have same # elements

def interleave(array_one, array_two)
  new_array = []
  (0..array_one.size - 1).each do |x|
    new_array << [array_one[x], array_two[x]]
  end
  new_array.flatten
end

interleave([1, 2, 3], ['a', 'b', 'c'])
