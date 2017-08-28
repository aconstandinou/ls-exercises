def max_by(array)
  return nil if array.empty?

  max_array = []
  array.each do |v|
    max_array << yield(v)
  end

  max_val = max_array[0]
  index = 0
  max_array.each_with_index do |v, idx|
    if v > max_val
      index = idx
      max_val = v
    end
  end

  array[index]
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
