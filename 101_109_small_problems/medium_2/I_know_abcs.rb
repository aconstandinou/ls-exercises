BLOCKS = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"],
          ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"],
          ["V", "I"], ["L", "Y"], ["Z", "M"]]

def block_word?(string)
  letter_array = []
  string.each_char do |letter|
    BLOCKS.each do |sub_array|
      if sub_array.include?(letter.upcase)
        letter_array << sub_array
      end
    end
  end
  compare_array = letter_array.uniq
  compare_array.size != letter_array.size ? false : true
end


# Test Cases
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
