def negative(number)
  number > 0 ? number * -1 : number
end

# Test Cases
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
