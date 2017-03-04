puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

puts "It's 2017. You will retire in #{2017+(retirement_age-age)}."
puts "You have only #{retirement_age-age} years of work to go!"
