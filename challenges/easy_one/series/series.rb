class Series

  attr_reader :string_slice

  def initialize(string_to_slice)
    @string_slice = string_to_slice
  end

  def slices(num)
    raise ArgumentError, 'n is too big for the string.' if num > string_slice.size
    length_string = string_slice.size
    array_vals = []
    (0..length_string-num).each do |n|
      array_vals << string_slice[n..n + num - 1].split('').map(&:to_i)
    end
    array_vals
  end
end
