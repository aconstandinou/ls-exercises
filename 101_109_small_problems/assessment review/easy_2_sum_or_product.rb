def sum_method(num)
  returned_sum = 0
  (1..num).each do |value|
    returned_sum += value
  end
  returned_sum
end

def product_method(num)
  returned_product = 1
  (1..num).each do |value|
    returned_product *= value
  end
  returned_product
end

def sum_or_product()
  number = 0
  function = ''

  loop do
    puts "Enter any number greater than 0:"
    number = gets.chomp.to_i
    break if number > 0
    puts "That was invalid, please try again."
  end

  loop do
    puts "Now enter 's' to compute the sum or 'p' to compute the product."
    function = gets.chomp
    break if function == 's' || function == 'p'
    puts "That was invalid, please try again."
  end

  if function == 's'
    x = sum_method(number)
    puts "The sum of the integers between 1 and #{number} is #{x}."
  else
    x = product_method(number)
    puts "The product of the integers between 1 and #{number} is #{x}."
  end
end

sum_or_product
