def print_in_box(string)
  spaces = string.length
  dashes = "-" * ( spaces + 2 )
  spacers = " " * ( spaces + 2 )
  puts "+" + dashes + "+"
  puts "|" + spacers + "|"
  puts "| #{string} |"
  puts "|" + spacers + "|"
  puts "+" + dashes + "+"
end

# Test Cases
print_in_box('To boldly go where no one has gone before.')
print_in_box('')
