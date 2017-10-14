class Octal

  attr_reader :number_string

  def initialize(num_string)
    @number_string = num_string
  end

  def to_decimal
    arr_to_cover = number_string.split('').map(&:to_i)
    #arr_to_cover = arr_to_cover.map(&:to_i)
    octal = 0
    count = arr_to_cover.size - 1
    arr_to_cover.each do |val|
      octal += val * (8**count)
      count -= 1
    end
    octal
  end

end
