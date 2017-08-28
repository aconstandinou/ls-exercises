def each_cons(array)
  iter1 = 0
  iter2 = 1
  size = array.size - 1
  size.times do
    yield(array[iter1], array[iter2])
    iter1 += 1
    iter2 += 1
  end
  return nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end

p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}

hash = {}
each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
