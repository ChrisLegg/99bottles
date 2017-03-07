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
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, " +
        "#{number} #{container(number)} of beer.\n" +
        "Take #{pronoun(number)} down and pass it around, " +
        "#{quantity(number-1)} #{container(number-1)} of beer on the wall.\n"
    end
  end

  def quantity(number=:FIXME)
    if number==0
      "no more"
    else
      number
    end
  end

  def pronoun(number)
    if number==1
      "it"
    else
      "one"
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else 
      "bottles"
    end

  end
end
