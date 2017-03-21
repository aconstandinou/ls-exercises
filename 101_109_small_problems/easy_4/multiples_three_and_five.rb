def multisum(number)
  sum = 0
  1.upto(number) do |i|
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  sum
end


# Test Cases
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
