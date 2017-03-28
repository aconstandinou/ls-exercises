def remove_vowels(string_array)
  new_array = []
  string_array.each do |word|
    new_array << word.delete("aeiouAEIOU")
  end
  new_array
end

# Test Cases

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
