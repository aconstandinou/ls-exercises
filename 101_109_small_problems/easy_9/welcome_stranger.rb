def greetings(array, hash)
  name_string = array.join(' ')
  return "Hello, #{name_string}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

# Test Case
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
