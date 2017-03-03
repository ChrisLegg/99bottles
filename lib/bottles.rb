class Bottles

  def song
    verses(99,0)
  end

  def verses(verse_from, verse_to)
    verse_from
      .downto(verse_to)
      .collect { |verse_number| verse(verse_number) }
      .join("\n")
  end

  def verse(number)
    case number
    when 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
        "Take one down and pass it around, #{number-1} bottle of beer on the wall.\n"
    when 1
      "#{number} bottle of beer on the wall, #{number} bottle of beer.\n" +
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
        "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    end
  end
end
