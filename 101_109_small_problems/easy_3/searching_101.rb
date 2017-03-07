def number_checker
  array = []
  puts "Enter the 1st number:"
  array << gets.chomp.to_i
  puts "Enter the 2nd number:"
  array << gets.chomp.to_i
  puts "Enter the 3rd number:"
  array << gets.chomp.to_i
  puts "Enter the 4th number:"
  array << gets.chomp.to_i
  puts "Enter the 5th number:"
  array << gets.chomp.to_i
  puts "Enter the last number:"
  num_verify = gets.chomp.to_i
  if array.include?(num_verify)
    puts "The number #{num_verify} appears in #{array}."
  else
    puts "The number #{num_verify} does not appears in #{array}."
  end
end
