# Enumerable#any?

def any?(array, &block)
  return false if array.empty?
  array.each do |n|
    return true if block.call(n)
  end
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false

# LS Solution
def any?(collection)
  collection.each { |item| return true if yield(item) }
  false
end

# Our solution simply iterates through our collection, and returns true the
# first time it encounters an item that produces a true result when it is
# yielded to the block. If no such item is encountered, we return false.
