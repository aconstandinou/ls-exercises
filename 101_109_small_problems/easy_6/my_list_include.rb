def include?(array, search_val)
  bool = false
  array.each do |num|
    if num == search_val
      bool = true
    end
  end
  bool
end

# Test Cases

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
