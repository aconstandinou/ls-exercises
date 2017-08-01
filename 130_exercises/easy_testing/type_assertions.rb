# Write a minitest assertion that will fail if value is not an instance of the
# Numeric class exactly. value may not be an instance of one of Numeric's superclasses.

assert_instance_of Numeric, value

# #assert_instance_of uses Object#instance_of? to ensure that its second argument
# is an instance of the class named as its first argument.
