def sum_recursive(num)
  if num == 0
    0
  else
  num + sum_recursive(num - 1)
 end
end

def product_recursive(num)
  if num == 0 || num == 1
    1
  else
  num * product_recursive(num - 1)
  end
end

def recursive_way()
  num = 0
  loop do
    puts "Please enter an integer greater than 0"
    num = gets.chomp.to_i
    break if num > 0
  end
  puts "Enter 's' to compute the sum or 'p' to compute the product."
  function = gets.chomp
  if function == 's'
    puts "The sum of the integers between 1 and #{num} is #{sum_recursive(num)}."
  elsif function == 'p'
    puts "The product of the integers between 1 and #{num} is #{product_recursive(num)}."
  end
end

recursive_way()

# USING INJECT - VERY HANDY
def sum_recursive(num)
  # can also compute sum with symbol (1..5).inject(:+)
  (1..num).inject { |sum, n| sum + n }
end

def product_recursive(num)
  # can also compute sum with symbol (1..5).inject(:*)
  (1..num).inject { |product, n| product * n }
end

recursive_way()
