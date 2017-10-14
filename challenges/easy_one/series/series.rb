class Series

  attr_reader :string_slice

  def initialize(string_to_slice)
    @string_slice = string_to_slice
  end

  def slices(num)
    raise ArgumentError, 'num is too big for the string.' if num > string_slice.size
    length_string = string_slice.size
    sliced_vals = []
    (0..length_string-num).each do |n|
      sliced_vals << string_slice[n..n + num - 1].split('').map(&:to_i)
    end
    sliced_vals
  end
end

# HOW COULD YOU REFACTOR THIS?
class Series

  attr_reader :string_slice

  def initialize(string_to_slice)
    @string_slice = string_to_slice
  end

  def slices(slice_len)
    raise ArgumentError, 'num is too big for the string.' if num > string_slice.size
    sliced_vals = []
    last_idx = string_slice.size - slice_len
    (0..last_idx).each do |n|
      sliced_vals << string_slice.slice(n, slice_len).split('').map(&:to_i)
    end
    sliced_vals
  end
end
