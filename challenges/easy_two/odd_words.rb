class OddWords

  attr_accessor :string_of_chars

  def odd_words
    new_array = []

    words_array = self.string_of_chars.split(' ')

    words_array.each_with_index do |word, idx|
      word_split = word.split('')
      if idx.odd? && word_split.size <= 20
        if word_split.include?('.')
          word_split = word_split[0..-2]
          new_array << word_split.reverse.join('') + '.'
        else
          new_array << word_split.reverse.join('')
        end
      else
        new_array << word
      end
    end
    new_array.join(' ')
  end

end
