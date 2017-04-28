def center_of(string)
  mid_chars = []
  if string.length.even?
    mid_chars << string[(string.length/2)-1..string.length/2]
  else
    mid_chars << string[(string.length/2.0).floor]
  end
  mid_chars.join
end

# Test Cases
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
