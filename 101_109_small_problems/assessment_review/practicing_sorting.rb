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
