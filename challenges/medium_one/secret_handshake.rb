class SecretHandshake

  HANDSHAKE_CODE = { 0 => 'wink', 1 => 'double blink', 2 => 'close your eyes',
                     3 => 'jump', 4 => 'reverse'}  # keys are indexes for array

  attr_reader :num_to_convert

  def initialize(input)
    @num_to_convert = input.to_i
  end

  def commands
    binary_array_digits = @num_to_convert.to_s(2).chars.map(&:to_i).reverse
    # binary_array_digits is essentially the binary version of our input
    # and split by each digit. ie: binary 101 is split into [1, 0, 1]
    # then we reverse the array to start at the first digit in our binary number
    #

    secret_handshake = []

    binary_array_digits.each_with_index do |ii, idx|
      if ii == 1 && idx <= 4
        secret_handshake << HANDSHAKE_CODE[idx]
      end
    end

    secret_handshake.include?('reverse') ? secret_handshake.delete_if {|word| word == 'reverse'}.reverse : secret_handshake
  end

end

# LS version
