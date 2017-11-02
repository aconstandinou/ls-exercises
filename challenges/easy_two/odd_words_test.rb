require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'odd_words'

class OddWordsTest < MiniTest::Test

  def setup
    @odd_words_test = OddWords.new
  end

  def test_one_letter
    @odd_words_test.string_of_chars = 'n'
    assert_equal('n', @odd_words_test.odd_words)
  end

  def test_one_word
    @odd_words_test.string_of_chars = 'hello'
    assert_equal('hello', @odd_words_test.odd_words)
  end

  def test_two_words
    @odd_words_test.string_of_chars = 'no can.'
    assert_equal('no nac.', @odd_words_test.odd_words)
  end

  def test_multiple_spaces
    @odd_words_test.string_of_chars = 'no word   .'
    assert_equal('no drow .', @odd_words_test.odd_words)
  end

end
