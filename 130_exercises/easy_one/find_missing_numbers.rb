def missing(sorted_array)
  missing_values_arr = []
  (sorted_array[0]..sorted_array[-1]).each do |x|
    if !sorted_array.include?(x)
      missing_values_arr << x
    end
  end
  missing_values_arr
end

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []
