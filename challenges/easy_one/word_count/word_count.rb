class Phrase

  attr_reader :sentence

  def initialize(words)
    @sentence = words.downcase.gsub(/[^a-z'0-9]/, ' ').gsub(/^'|'$/, '').split(' ')
  end

  def word_count
    word_hash = Hash.new(0)
    self.sentence.each do |word|
      word_hash[word] += 1
    end
    word_hash
  end

end

# issue was last test_with_quotations
# problem was that apostrophes and quotes are technically the same
# resolution: aim to remove quotes at beginning and end of word
