puts "What is the bill?"
bill_total = gets.chomp.to_f
puts "What is the tip percentage? (ex 10 or 15 for percent)"
tip_perc = gets.chomp.to_f/100

puts "The tip is $#{bill_total*tip_perc}"
puts "The total is $#{bill_total + (bill_total*tip_perc)}"
