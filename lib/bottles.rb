class Bottles

  def verse(number)
    case number
    when 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
        "Take one down and pass it around, #{number-1} bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
        "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    end
  end
end
