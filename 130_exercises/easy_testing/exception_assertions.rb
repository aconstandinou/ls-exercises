# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.

assert_raises(NoExperienceError) { employee.hire }

# #assert_raises checks if the given block raises an exception of the named type. If it does not, the assertion fails.
