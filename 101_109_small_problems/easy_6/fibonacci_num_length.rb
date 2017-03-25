def find_fibonacci_index_by_length(number)
  fibonacci = [1,1]
  counter = 3
  loop do
    new_num = fibonacci[-2] + fibonacci[-1]
    fibonacci.push(new_num)
    break if new_num.to_s.length == number
    counter += 1
  end
  counter
end

# Test Cases
find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
