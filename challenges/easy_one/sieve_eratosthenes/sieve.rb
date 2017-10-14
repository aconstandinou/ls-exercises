class Sieve

  attr_reader :ending_num, :prime_hash

  def initialize(end_num)
    @ending_num = end_num
    @prime_hash = Hash.new()
    2.upto(ending_num) do |n|
      prime_hash[n] = -1
    end
  end

  def primes
    2.upto(ending_num) do |base_n|
      (base_n..ending_num).step(base_n) do |n|
        if n == base_n && prime_hash[n] == -1
          prime_hash[n] = 1
        else
          prime_hash[n] = 0
        end
      end
    end
    prime_hash.select{|k,v| v == 1}.keys.to_a
  end

end
