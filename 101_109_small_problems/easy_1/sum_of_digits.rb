def sum(num)
  last_index = num.to_s.length # tells us how many values to sum
  sum = 0
  num_string = num.to_s
  (0..last_index).each do |idx|
    sum += num_string[idx].to_i
  end
  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# LS answer
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
