def multiply_all_pairs(array_1, array_2)
  new_array = []
  array_1.each do |num|
    array_2.each do |num2|
      new_array << num * num2
    end
  end
  new_array.sort!
end

# Test Case
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
