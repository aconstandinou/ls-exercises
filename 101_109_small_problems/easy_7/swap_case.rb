def swapcase(string)
  string_array = string.split('')
  new_string = ""
  string_array.each do |char|
    if char =~ /[a-z]/
      new_string << char.upcase!
    elsif char =~ /[A-Z]/
      new_string << char.downcase!
    else
      new_string << char
    end
  end
  new_string
end

# Test Cases
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
