class Octal
  BASE = 8
  INVALID_OCTAL = /\D|[8-9]/

  attr_reader :number_string

  def initialize(num_string)
    @number_string = num_string
  end


  def to_decimal
      number_string =~ INVALID_OCTAL ? 0 : calculate
  end

  private

  def calculate
    arr_to_cover = number_string.split('').map(&:to_i)
    octal = 0
    count = arr_to_cover.size - 1
    arr_to_cover.each do |val|
      octal += val * (BASE**count)
      count -= 1
    end
    octal
  end

end
