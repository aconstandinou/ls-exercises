class Anagram

  attr_reader :orig_word, :letters

  def initialize(word_to_test)
    @orig_word = word_to_test
    @letters = self.orig_word.downcase.split('').sort
  end

  def match(test_array)
    test_array.select { |arr_word| anagram?(arr_word) }.sort
  end

  private

  def anagram?(word)
    self.letters == word.downcase.split('').sort && self.orig_word.downcase != word.downcase
  end
end
