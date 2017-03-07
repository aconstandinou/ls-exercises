def xor?(input1, input2)
  if (input1 == true && input2 == false) || (input1 == false && input2 == true)
    true
  else
    false
  end
end

# test cases
xor?(5.even?, 4.even?)  == true
xor?(5.odd?, 4.odd?)  == true
xor?(5.odd?, 4.even?)  == false
xor?(5.even?, 4.odd?)  == false

# LS version
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
