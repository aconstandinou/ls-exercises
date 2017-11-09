class Luhn

  AVAIL_DIGITS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

  attr_reader :whole_num, :whole_num_split

  def initialize(number)
    @whole_num = number
    @whole_num_split = self.whole_num.to_s.split('').reverse.map { |dgt| dgt.to_i }
  end

  def addends
    addends_array = self.whole_num_split.map.with_index do |val, idx|
      if idx.odd?
        val * 2
      else
        val
      end
    end
    addends_array = addends_array.map do |val|
      if val >= 10
        val - 9
      else
        val
      end
    end
    addends_array.reverse
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    checksum_var = checksum
    checksum_var % 10 == 0 ? true : false
  end

  def self.create(input)
    input_array = input.to_s.split('').reverse.map { |dgt| dgt.to_i }
    AVAIL_DIGITS.each do |extra_num|
      luhn_obj = Luhn.new(input_array.insert(0, extra_num))
      if luhn_obj.valid?
        return input_array.join('').reverse.to_i
      else
        input_array.shift
      end
    end
  end

end
