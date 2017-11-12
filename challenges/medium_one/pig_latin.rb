# Rule 1: If word begins with vowel sound, add an "ay" sound to end of the word.
# Rule 2: If a word begins with a consonant, move it to the end of the word,
# and then add an "ay" sound to the end of the word.

# input: string (can be multiple words)
# output: new string where each word (if multiple) is translated
# calling method: class method translate

class PigLatin

  VOWELS = ['a', 'e', 'i', 'o', 'u']
  VOWELS_SPECIAL = ['qu', 'x']

  def self.translate(string)
    string_arr = string.split(' ')
    pig_latin_arr = []

    string_arr.each do |word|
      if begins_with_vowel_sound?(word)
        pig_latin_arr << word + 'ay'
      elsif word.include?('qu')
        index_at = word.index('u') + 1
        pig_latin_arr << word[index_at..-1] + word[0..index_at-1] + 'ay'
      else
        first_letters = ''
        idx = 0
        char_split = word.split('')

        char_split.each_with_index do |char, index|
          if VOWELS.include?(char)
            idx = index
            break
          else
            first_letters << char
          end
        end
        keep = word.slice(idx..-1)
        pig_latin_arr << keep + first_letters + 'ay'
      end
    end

    pig_latin_arr.join(' ')
  end

  def self.begins_with_vowel_sound?(word)
    word.match(/\A[aeiou]|[xy][^aeiou]/)
  end
end
