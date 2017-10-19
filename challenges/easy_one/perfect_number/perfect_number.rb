class PerfectNumber

  attr_reader :num

  def self.classify(num)
    @num = num
    raise RuntimeError, 'Negative Number Provided' if @num < 0
    factors = find_divisors(@num)         # find our divisors through class method
    factors_sum = factors.reduce(&:+)   # passed in array without the original number

    if factors_sum == @num
      return 'perfect'
    elsif factors_sum > @num
      return 'abundant'
    else
      return 'deficient'
    end

  end

  private

  def self.find_divisors(num)
    divisors = []
    1.upto(num - 1) do |n|
      if num % n == 0
        divisors << n
      end
    end
    divisors
  end

end
