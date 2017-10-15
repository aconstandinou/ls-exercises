# input: number
# output: all sums of multiples of 3 and 5 leading up to but not including number

# ex: If we list all the natural numbers up to but not including 20 that are
# multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18.
# The sum of these multiples is 78.
=begin
class SumOfMultiples

  attr_accessor :number
  attr_reader :mult_one, :mult_two, :mult_three

  def initialize(arg_one = 3, arg_two = 5, arg_three = 0)
    @mult_one = arg_one
    @mult_two = arg_two
    @mult_three = arg_three
  end

  def self.to(num)
    new_sum = SumOfMultiples.new()
    new_sum.to(num)
    #@number = num
    #total_sum = 0
    #mult_three == 0 ? total_sum = iterator_two_args(self.number) : total_sum = iterator_three_args(self.number)
    #total_sum
  end

  def to(num)
    @number = num
    total_sum = 0
    mult_three == 0 ? total_sum = iterator_two_args(self.number) : total_sum = iterator_three_args(self.number)
    total_sum
  end

  private

  def iterator_two_args(num)
    total_sum = 0
    1.upto(number - 1) do |n|
      if n % mult_one == 0 || n % mult_two == 0
        total_sum += n
      end
    end
    total_sum
  end

  def iterator_three_args(num)
    total_sum = 0
    1.upto(number - 1) do |n|
      if n % mult_one == 0 || n % mult_two == 0 || n % mult_three == 0
        total_sum += n
      end
    end
    total_sum
  end

end
=end
# REFACTORED

class SumOfMultiples

  def self.to(limit_int)
    SumOfMultiples.new(3, 5).to(limit_int)
    #(0..limit_int-1).select {|num| num % 3 == 0 || num % 5 == 0}.reduce(&:+)
  end

  def initialize(*factors) #any number of arguments into an array
    @factors = factors
  end

  def to(limit_int)
    result = []
    (0..limit_int-1).each do |n|
      result << n if divisible_by_any_factor?(n)
    end
    result.uniq!
    result.reduce(&:+)
  end

  def divisible_by_any_factor?(num)
    @factors.each do |factor|
      return true if num % factor == 0
    end
    false
  end
end
