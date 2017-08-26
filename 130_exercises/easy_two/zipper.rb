def zip(array_one, array_two)
  new_array = []
  size = array_one.size
  (size).times do |n|
    new_array << [array_one[n], array_two[n]]
  end
  new_array
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
