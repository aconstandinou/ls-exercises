array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# What will the following code print, and why?
# ANSWER
# when elements from array1 are 'shoveled' into array2, since they now
# point to the same object_id, mutation to either array1 or array2 will
# affect both variables. We can see that is the case on line 5 when we
# invoke method puts on array2. We can see that like array1, mutation has
# occurred.
