input: two arrays
output: combination of both arrays with no duplicates

def merge(array1, array2)
  array = array1 + array2
  array.sort.uniq
end

# Test Case
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# LS answer used the Array#| method
# example: [ "a", "b", "c" ] | [ "c", "d", "a" ]    #=> [ "a", "b", "c", "d" ]
# Set Union — Returns a new array by joining ary with other_ary, excluding any
# duplicates and preserving the order from the original array.
