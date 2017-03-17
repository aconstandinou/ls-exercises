def short_long_short(string1, string2)
  if string1.length < string2.length
    string1+string2+string1
  else
    string2+string1+string2
  end
end
