def repeater(string)
  new_string = []
  string_array = string.split('')
  string_array.each do |char|
    new_string << char * 2
  end
  new_string.join()
end

# Test Cases

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
