def stringy(num)
  string = ''
  (1..num).each do |ii|
    if ii.odd?
      string << '1'
    else
      string << '0'
    end
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
