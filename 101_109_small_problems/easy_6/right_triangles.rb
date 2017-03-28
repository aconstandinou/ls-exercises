def triangle(num)
 string = ""
 empty_char = " "
 star_char = "*"
 count = 0
  loop do
   count += 1
   string << (( empty_char * (num - count)) + (star_char * count))
   break if count == num
   string << "\n"
  end
 puts string
end

# Test Cases

triangle(5)
triangle(9)
