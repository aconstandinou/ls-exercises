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

# filtering criteria
query = {
  :price_min => 240,
  :price_max => 280,
  :q => 'thinkpad'
}

# filtering criteria
query2 = {
  :price_min => 300,
  :price_max => 4500,
  :q => 'dell'
}

def search(query)
  PRODUCTS.select do |h|
    (h[:price] >= query[:price_min]) && (h[:price] <= query[:price_max]) &&
    ((h[:name].downcase).include?query[:q])
  end
end

search(query)
# [{name: "Thinkpad x220", price: 250}]

search(query2)
# [{name: "Dell Inspiron", price: 300},
# {name: "Dell Inspiron", price: 450}]


require "pry"

# Given an array of an odd number of integers, change each integer’s sign (positive or negative)
# to match the sign that most integers already share. Pass all test cases


#create clone array argument
#iterate thru clone and count how many elements are (+) and (-)
#whichever count is greater, we're going to change all elements
#return cloned array

def mutative_array(array, method)
  if method == 'positive'
    array.map! do |ele|
      ele > 0 ? ele : ele * -1
    end
  else
    array.map! do |ele|
      ele > 0 ? ele * -1 : ele
    end
  end
end



def change_sign(array)
  positive_count = 0
  negative_count = 0
  array.each do |ele|
    if ele < 0
      negative_count += 1
    else
      positive_count += 1
    end
  end

  if positive_count > negative_count
    mutative_array(array, 'positive')

  else
    mutative_array(array, 'negative')
  end
  array
end


# test cases belove


p change_sign([1, 2, 3, 4, -5]) == [1, 2, 3, 4, 5]
p change_sign([1, 2, 3, -4, -5]) == [1, 2, 3, 4, 5]
p change_sign([-1, -2, -3, 4, 5]) == [-1, -2, -3, -4, -5]
p change_sign([-1, -2, -3, -4, 5]) == [-1, -2, -3, -4, -5]



arr = [1, 2, 3, 4, -5]
clone_arr = arr.clone
change_sign(arr)

p clone_arr
p arr
p clone_arr != arr
