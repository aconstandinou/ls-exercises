require 'pry'

class DNA

  attr_reader :dna_one

  def initialize(string_1)
    @dna_one = string_1
  end

def hamming_distance(dna2)
  dna_two = dna2
  binding.pry
  return 0 if length_zero?(dna_two) || length_zero?(self.dna_one)
  shortest_str_size = shortest_string_checker(self.dna_one, dna_two)
  hamming_value = 0

  0.upto(shortest_str_size - 1). do |idx|
    hamming_value += 1 if self.dna_one[idx] != dna_two[idx]
  end

  hamming_value
end

  def shortest_string_checker(str1, str2)
    str1.size < str2.size ? str1.size : str2.size
  end

  def length_zero?(str)
    str.size == 0
  end
end
