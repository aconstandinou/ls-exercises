hash = Hash.new

(1..1000).each_with_index { |k, idx| hash[k] = 1 }

counter = 2
loop do
  break if counter == 1001
  hash.each do |k, v|
    if k % counter == 0
      if v == 1
        hash[k] = 0
      else
        hash[k] = 1
      end
    end
  end
  counter += 1
end

lights_on = hash.select { |k, v| v == 1 }

puts lights_on
