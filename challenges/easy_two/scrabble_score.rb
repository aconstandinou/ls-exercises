class Scrabble

  SCRABBLE_HASH = {
                    'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1,
                    'f' => 4, 'g' => 2, 'h' => 4, 'i' => 1, 'j' => 8,
                    'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1,
                    'p' => 3, 'q' => 10, 'r' => 1, 's' => 1, 't' => 1,
                    'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8, 'y' => 4,
                    'z' => 10
                    }

  def initialize(string)
    @word = string
  end

  def self.score(string_input)
    scrabble_obj = Scrabble.new(string_input)
    scrabble_obj.score
  end

  def score
    total_score = 0
    #return total_score if @word == nil || @word.count(" ") > 0
    return total_score if /\s/.match(@word) || @word == nil

    each_letter = @word.split('')

    each_letter.each do |char|
      total_score += SCRABBLE_HASH[char.downcase]
    end

    total_score
  end

end

# LS Notes
# I initially had two errors, one I had no class method score (easy fix)
# Second error was the whitespace. The test said, return 0 for any whitespace
# this fix required google search for a reminder on counting any whitespace.

# LS Video
# the quicker fix was that any non-letters would return 0. Here is the refactor:
