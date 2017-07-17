ROT13 = { 'A' => 'N', 'B' => 'O', 'C' => 'P', 'D' => 'Q', 'E' => 'R', 'F' => 'S',
          'G' => 'T', 'H' => 'U', 'I' => 'V', 'J' => 'W', 'K' => 'X', 'L' => 'Y',
          'M' => 'Z', 'N' => 'A', 'O' => 'B', 'P' => 'C', 'Q' => 'D', 'R' => 'E',
          'S' => 'F', 'T' => 'G', 'U' => 'H', 'V' => 'I', 'W' => 'J', 'X' => 'K',
          'Y' => 'L', 'Z' => 'M',
          'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'eE' => 'r', 'f' => 's',
          'g' => 't', 'h' => 'u', 'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
          'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c', 'q' => 'd', 'r' => 'e',
          's' => 'f', 't' => 'g', 'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
          'y' => 'l', 'z' => 'm' }

encrypted_array = [ 'Nqn Ybirynpr',
                    'Tenpr Ubccre',
                    'Nqryr Tbyqfgvar',
                    'Nyna Ghevat',
                    'Puneyrf Onoontr',
                    'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
                    'Wbua Ngnanfbss',
                    'Ybvf Unvog',
                    'Pynhqr Funaaba',
                    'Fgrir Wbof',
                    'Ovyy Tngrf',
                    'Gvz Orearef-Yrr',
                    'Fgrir Jbmavnx',
                    'Xbaenq Mhfr',
                    'Fve Nagbal Ubner',
                    'Zneiva Zvafxl',
                    'Lhxvuveb Zngfhzbgb',
                    'Unllvz Fybavzfxv',
                    'Tregehqr Oynapu']

def array_print(array)
  array.each do |word|
    puts word
  end
end

def encrypted_strings(array_of_names)
  new_names = []
  array_of_names.each do |word|
    array_to_iterate = word.split('')
    new_name = ''
    array_to_iterate.each do |char|
      if ROT13.has_key?(char)
        new_name << ROT13[char]
      else
        new_name << char
      end
    end
    new_names << new_name
  end
  array_print(new_names)
end

encrypted_strings(encrypted_array)
