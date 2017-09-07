# modified bubble sort to use a block

def bubble_sort!(arr)
  n = arr.size
  loop do
    swapped = false
    (arr.size - 1).times do |idx|
      if !block_given? && (arr[idx] <=> arr[idx + 1]) == 1 ||
          block_given? && !yield(arr[idx], arr[idx + 1]) #false on yield because its current char less than next char (looking forward)
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        swapped = true
      end
    end

    break if !swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)
