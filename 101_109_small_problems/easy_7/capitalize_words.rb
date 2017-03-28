def word_cap(string)
  string_array = string.split(' ')
  string_array.each { |word| word.downcase! }
  string_array.each do |word|
    if word[0] =~ /[a-z]/
      word.capitalize!
    end
  end
  string_array.join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
