def arithmetic_int()
  puts "Enter the first number:"
  first_num = gets.chomp.to_i
  puts "Enter the second number:"
  second_num = gets.chomp.to_i
  puts "#{first_num} + #{second_num} = #{first_num + second_num}" # addition
  puts "#{first_num} - #{second_num} = #{first_num - second_num}" # subtraction
  puts "#{first_num} * #{second_num} = #{first_num * second_num}" # product
  puts "#{first_num} / #{second_num} = #{first_num / second_num}" # quotient
  puts "#{first_num} % #{second_num} = #{first_num % second_num}" # remainder
  puts "#{first_num} ** #{second_num} = #{first_num ** second_num}" # power
end

arithmetic_int()
