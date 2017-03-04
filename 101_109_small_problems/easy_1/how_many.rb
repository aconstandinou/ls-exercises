def count_occurrences(array)
  hsh = Hash.new(0) # track occurences by key value pair
  array.each { |car_type| hsh[car_type] += 1 }
  hsh.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)
