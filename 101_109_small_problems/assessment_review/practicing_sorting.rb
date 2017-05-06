# require 'pry'
#
# PRODUCTS = [
#   {:name => 'Thinkpad x210', :price => 220},
#   {:name => 'Thinkpad x220', :price => 250},
#   {:name => 'Thinkpad x250', :price => 979},
#   {:name => 'Thinkpad x230', :price => 300},
#   {:name => 'Thinkpad x230', :price => 330},
#   {:name => 'Thinkpad x230', :price => 350},
#   {:name => 'Thinkpad x240', :price => 700},
#   {:name => 'Macbook Leopard', :price => 300},
#   {:name => 'Macbook Air', :price => 700},
#   {:name => 'Macbook Pro', :price => 600},
#   {:name => 'Macbook', :price => 1449},
#   {:name => 'Dell Latitude 1000', :price => 200},
#   {:name => 'Dell Latitude 2000', :price => 650},
#   {:name => 'Dell Inspiron 5000', :price => 300},
#   {:name => 'Dell Inspiron 6000', :price => 450}
# ]
#
# PRODUCTS.each_index do |idx|
#   (idx+1..PRODUCTS.length-1).each do |sec_idx|
#     if PRODUCTS[idx][:price] > PRODUCTS[sec_idx][:price]
#       PRODUCTS[idx], PRODUCTS[sec_idx] = PRODUCTS[sec_idx], PRODUCTS[idx]
#     end
#   end
# end
#
# def rotate_array(array)
#   cloned_arr = array.clone
#   to_move_to_end = cloned_arr[0]
#   cloned_arr = cloned_arr[1..-1]
#   cloned_arr << to_move_to_end
#   cloned_arr
# end
#
# # TEST CASES
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']
#
# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true
#
# def rotate_rightmost_digits(number, ele)
#   array = number.to_s.split('')
#   array.map! { |num| num.to_i }
#   curr_array = array[0..-ele-1] + rotate_array(array[-ele..-1])
#   curr_array.join.to_i
# end
#
# # TEST CASES
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917
#
#
#
# KEY_HASH = {"B"=> "O", "X"=> "K", "D"=> "Q", "C"=> "P", "N"=> "A",
#             "G"=> "T", "R"=> "E", "F"=> "S", "J"=> "W", "H"=> "U",
#             "V"=> "I", "L"=> "Y", "Z"=> "M"}
#
# #iterate through string
# #check if string character is a key in KEY_HASH
# # if yes, check if the value of our key is also included in string
# #    if yes
# #      return false
# # else
# #  continue
#
# def block_word?(string)
#   new_string = string.upcase
#   string_array = new_string.split('')
#   string_array.each do |char|
#     if KEY_HASH[char]
#       if string_array.include?(KEY_HASH.fetch(char))
#         return false
#       end
#     end
#   end
#
#   return true
# end
#
# # Test Cases
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true
#
#
# require 'date'
#
# def friday_13th(year)
#   number_13_days = 0
#
#   (1..12).each do |mth|
#     if Date.new(year, mth, 13).friday?
#       number_13_days += 1
#     end
#   end
#
#   number_13_days
# end
#
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2


def reversed!(array)
  array_clone = array.clone
  new_array = []
  array_clone.each do |ele|
    new_array.insert(0, ele)
  end

  new_array.each_index do |idx|
    array[idx] = new_array[idx]
  end

  array
end

list = [1,2,3,4]
result = reversed!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

# PART II
def reverse(array)
  new_array = []
  array.each do |ele|
    new_array.insert(0, ele)
  end

  new_array_clone = new_array.clone

  new_array_clone.each_index do |idx|
    new_array[idx] = new_array_clone[idx]
  end

  new_array
end


reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b c d e)) == %w(e d c b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
list.object_id != new_list.object_id  # => true
list == [1, 2, 3]                     # => true
new_list == [3, 2, 1]                 # => true

#input: string
#iterate through each character and collect substrings
#method return = array of all substrings

def substrings_at_start(string)
  string_array = string.split('')
  substrings_array = []
  string_array.each_index do |idx|
    (idx..string_array.length-1).each do |sec_idx|
      substrings_array << string_array[idx..sec_idx].join('')
    end
  end
  substrings_array
end

#substrings_at_start('hello')
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#############################################
def all_substrings(string)
  string_array = string.split('')

  substrings_array = []

  string_array.each_index do |idx|
    (idx..string_array.length-1).each do |sec_idx|
      substrings_array << string_array[idx..sec_idx].join('')
    end
  end

  substrings_array
end

def palindromes(string)
  all_substrings_arr = all_substrings(string)
  all_substrings_arr.select! do |sub_string|
    if sub_string.length > 1
      sub_string == sub_string.reverse
    end
  end
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo']
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  array = []
  string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      array << char * 2
    else
      array << char
    end
  end
  array.join('')
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""


def center_of(string)
  string.length.odd? ? string[string.length/2] : string[string.length/2 -1..string.length/2]
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

NUMBERS_HASH = {'one'=> '1', 'two'=> '2', 'three'=> '3', 'four'=> '4',
                'five'=> '5', 'six'=> '6', 'seven'=> '7', 'eight'=> '8',
                'nine'=> '9', 'zero'=> '0'}

def word_to_digit(string)
  NUMBERS_HASH.keys.each do |word|
    string.gsub!(/\b#{word}\b/, NUMBERS_HASH[word])
  end
  string
end

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

def fibonacci_recursion(n)
  return 1 if n <= 2
  fibonacci_recursion(n-1) + fibonacci_recursion(n-2)
end

fibonacci_recursion(1) == 1
fibonacci_recursion(2) == 1
fibonacci_recursion(3) == 2
fibonacci_recursion(4) == 3
fibonacci_recursion(5) == 5
fibonacci_recursion(12) == 144
fibonacci_recursion(20) == 6765

def fibonacci(n)
  array = [1, 1]
  n.times do |_|
    array << array[-2] + array[-1]
  end
  array[n-1]
end
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075

def fibonacci_last(num)
  fib_num = fibonacci(num)
  return fib_num.to_s[-1].to_i
end

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
