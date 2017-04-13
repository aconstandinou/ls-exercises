def featured(int_num)
  if int_num >= 9_999_999_999
    'There is no possible number that fulfills those requirements.'
  else
    loop do
      int_num += 1
      if int_num % 7 == 0 && int_num.odd? &&
        int_num.to_s.split('').size == int_num.to_s.split('').uniq.size
        return int_num
      end
      break if int_num >= 9_876_543_210
    end
  end
end

# Test Cases
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
