def bubble_sort!(array)
  loop do
    n = array.size
    swap = false
    (1..n-1).each do |count|
      if array[count - 1] > array[count]
        array[count - 1], array[count] = array[count], array[count - 1]
        swap = true
      end
    end
    break if swap == false
  end
  array
end

# Test Cases
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
