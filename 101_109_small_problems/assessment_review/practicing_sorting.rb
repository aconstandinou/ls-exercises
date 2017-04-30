require 'pry'

PRODUCTS = [
  {:name => 'Thinkpad x210', :price => 220},
  {:name => 'Thinkpad x220', :price => 250},
  {:name => 'Thinkpad x250', :price => 979},
  {:name => 'Thinkpad x230', :price => 300},
  {:name => 'Thinkpad x230', :price => 330},
  {:name => 'Thinkpad x230', :price => 350},
  {:name => 'Thinkpad x240', :price => 700},
  {:name => 'Macbook Leopard', :price => 300},
  {:name => 'Macbook Air', :price => 700},
  {:name => 'Macbook Pro', :price => 600},
  {:name => 'Macbook', :price => 1449},
  {:name => 'Dell Latitude 1000', :price => 200},
  {:name => 'Dell Latitude 2000', :price => 650},
  {:name => 'Dell Inspiron 5000', :price => 300},
  {:name => 'Dell Inspiron 6000', :price => 450}
]

PRODUCTS.each_index do |idx|
  (idx+1..PRODUCTS.length).each do |sec_idx|
    if PRODUCTS[idx][:price] > PRODUCTS[sec_idx][:price]
      PRODUCTS[idx], PRODUCTS[sec_idx] = PRODUCTS[sec_idx], PRODUCTS[idx]
    end
  end
end

def rotate_array(array)
  cloned_arr = array.clone
  to_move_to_end = cloned_arr[0]
  cloned_arr = cloned_arr[1..-1]
  cloned_arr << to_move_to_end
  cloned_arr
end

# TEST CASES
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

def rotate_rightmost_digits(number, ele)
  array = number.to_s.split('')
  array.map! { |num| num.to_i }
  curr_array = array[0..-ele-1] + rotate_array(array[-ele..-1])
  curr_array.join.to_i
end

# TEST CASES
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
