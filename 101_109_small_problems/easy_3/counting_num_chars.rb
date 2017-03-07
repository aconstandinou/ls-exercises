def string_length()
  puts "Please write word or multiple words (ie: dog or my cat smells):"
  string = gets.chomp
  string_array = string.split(' ')
  total_len = 0
  string_array.each do |word|
    total_len += word.length
  end
  puts "There are #{total_len} characters in \"#{string}\"."
end

string_length

# LS has a simpler solution

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
