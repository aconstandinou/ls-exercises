# An Enumerator can be created by the following methods.

# - Kernel#to_enum
# - Kernel#enum_for
# - ::new


# new(size = nil) { |yielder| ... } click to toggle source
# new(obj, method = :each, *args)
# Creates a new Enumerator object, which can be used as an Enumerable.

# In the first form, iteration is defined by the given block, in which a “yielder”
# object, given as block parameter, can be used to yield a value by calling the
# yield method (aliased as +<<+):

fib = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

p fib.take(10) # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]


# factorial
# counting down from input (ex 5, start at 5) we multiply fact starting at 1
# so fact = 1
# fact 5! = fact at 1 * 5 * 4 * 3 * 2 * 1 = 120

factorial = Enumerator.new do |y|
  accum = 1
  fact = 1
  loop do
    y << accum
    fact += 1
    accum = accum * fact
  end
end

p factorial.take(7)

# attempt at external iteration using next
factorial2 = Enumerator.new do |y|
  a = [7, 6, 5, 4, 3, 2, 1]
  accum = 1
  e = a.to_enum
  index = 0
  has_next = true if index < a.size - 1
  loop do
    index += 1
    accum = accum * e.next
    y << accum
  end
end

p factorial2.take(7)
