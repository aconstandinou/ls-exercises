def digit_list(num)
  array = num.to_s.split(//)
  array.map do |value|
    value.to_i
  end
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
