def fibonacci(nth)
  beginning_time = Time.now
  array = [1, 1]
  while array.size <= nth
    array << array[-1] + array[-2]
  end
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
  array[nth - 1]
end

# Tst Cases
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501
