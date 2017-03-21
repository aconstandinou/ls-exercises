def cleanup(string)
  string.gsub!(/[^a-z]/i, ' ').squeeze(' ')
end

# Test Case
cleanup("---what's my +*& line?") == ' what s my line '
