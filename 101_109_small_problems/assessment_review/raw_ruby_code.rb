# input:
# method return:


def not_identical_num(number)
  number_array = number.to_s.split('')
  number_array == number_array.uniq
end

def featured(number)
  counter = number + 1

  loop do
    if counter % 7 == 0 && counter.odd?
      identical = not_identical_num(counter)
      break if identical
      counter += 1
    elsif counter >= 9_999_999_999
      return 'Error no such featured number exists'
    else
      counter += 1
    end
  end

  counter
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
