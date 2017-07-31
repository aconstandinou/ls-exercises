# Write a minitest assertion that will fail if value.downcase does not return 'xyz'

require 'minitest/autorun'

assert_equal 'xyz', value.downcase
