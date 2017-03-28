def multiply_list(array_1, array_2)
  product_array = []
  array_1.each_with_index do |value, idx|
    product_array << value * array_2[idx]
  end
  product_array
end

# Test Case
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
