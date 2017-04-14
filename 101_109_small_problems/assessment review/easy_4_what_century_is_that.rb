def century(year)
  ending = ['1', '2', '3']
  caveat_11_12_13 = ['11', '12', '13']
  hash = {'1'=> 'st', '2'=> 'nd', '3'=> 'rd'}

  #set our century
  year.to_s[-1] == '0' ? century = year / 100 : century = year / 100 + 1

  if ending.include?(century.to_s[-1]) && caveat_11_12_13.include?(century.to_s[-2..-1]) == false
    return "#{century}#{hash[century.to_s[-1]]}"
  else
    return "#{century}th"
  end
end

# Test Cases
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
