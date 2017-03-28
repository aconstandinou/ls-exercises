def staggered_case(string)
  string_array = string.downcase.split('')
  counter = 0
  string_array.each do |char|
    if char =~ /[a-z]/ && counter % 2 == 0
      char.capitalize!
      counter += 1
    elsif char =~ /[a-z]/ && counter % 2 == 1
      counter += 1
    end
  end
  string_array.join
end

# Test Cases
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
