require 'date'

def friday_13th?(year)
  months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  total_matches = 0
  months.each do |mth|
    if Date.new(year,mth,13).friday?
      total_matches += 1
    end
  end
  total_matches
end

friday_13th?(2015) == 3
friday_13th?(1986) == 1
friday_13th?(2019) == 2
