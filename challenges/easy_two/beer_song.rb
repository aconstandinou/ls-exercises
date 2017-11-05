class BeerSong

  def verse(bottle_num)
    get_verse(bottle_num)
  end

  def verses(start_num, end_num)
    all_verses = String.new
    for ii in (start_num).downto(end_num)
      if ii > end_num
        all_verses << get_verse(ii) + "\n"
      else
        all_verses << get_verse(ii)
      end
    end
    all_verses
  end

  def lyrics
    verses(99, 0)
  end

  def get_verse(bottle_num)
    case bottle_num
    when 3..99
      verse_str = "#{bottle_num} bottles of beer on the wall, #{bottle_num} bottles of beer.\n" \
                  "Take one down and pass it around, #{bottle_num - 1} bottles of beer on the wall.\n"
    when 2
      verse_str = "#{bottle_num} bottles of beer on the wall, #{bottle_num} bottles of beer.\n" \
                  "Take one down and pass it around, #{bottle_num - 1} bottle of beer on the wall.\n"
    when 1
      verse_str = "#{bottle_num} bottle of beer on the wall, #{bottle_num} bottle of beer.\n" \
                "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      verse_str = "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
    return verse_str
  end
end
