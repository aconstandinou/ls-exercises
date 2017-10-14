class Trinary

  BASE = 3
  VALID_TRINARY = [0, 1, 2]
  INVALID_CHARS = /\D/

  attr_reader :trinary_string

  def initialize(num_string)
    @trinary_string = num_string
  end

  def to_decimal
    arr_to_cover = trinary_string.split('')
    return 0 if !arr_to_cover.grep(INVALID_CHARS).empty?
    arr_to_cover = arr_to_cover.map(&:to_i)
    trinary = 0
    count = arr_to_cover.size - 1
    arr_to_cover.each do |val|
      trinary += val * (BASE**count) if VALID_TRINARY.include?(val)
      count -= 1
    end
    trinary
  end
end
