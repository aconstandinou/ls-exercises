def buy_fruit(fruit_array)
  shopping_list_arr = []
  fruit_array.each do |array|
    (1..array[1]).each do |fruit|
      shopping_list_arr << array[0]
    end
  end
  shopping_list_arr
end

# Test Case
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# LS version
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end
# Step 1, testing
# list.map { |fruit, qty| fruit * qty }
# ex => "applesapplesapples"
# Step 2, turn fruit to an array then multiply it x-times
# list.map { |fruit, qty| [fruit] * qty }
# ex => [fruit] * quantity => [["apples, "apples", apples"], ["orange"], ["bananas", "bananas"]]
# Step 3, testing
# list.map { |fruit, qty| [fruit] * qty }.flatten
# ex => [fruit] * quantity => ["apples, "apples", apples", "orange", "bananas", "bananas"]
