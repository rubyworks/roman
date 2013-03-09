require 'roman'

TestCase String do

  Method :to_roman do
    test "single digit conversions" do
      "I".to_roman.assert == RomanNumeral.new(1)
      "V".to_roman.assert == RomanNumeral.new(5)
      "X".to_roman.assert == RomanNumeral.new(10)

      "i".to_roman.assert == RomanNumeral.new(1)
      "v".to_roman.assert == RomanNumeral.new(5)
      "x".to_roman.assert == RomanNumeral.new(10)
    end

    test "simple mulit-digit conversions" do
      "IV".to_roman.assert   == RomanNumeral.new(4)
      "VI".to_roman.assert   == RomanNumeral.new(6)
      "VII".to_roman.assert  == RomanNumeral.new(7)
      "VIII".to_roman.assert == RomanNumeral.new(8)
      "IX".to_roman.assert   == RomanNumeral.new(9)
      "XI".to_roman.assert   == RomanNumeral.new(11)
      "XII".to_roman.assert  == RomanNumeral.new(12)
      "XIII".to_roman.assert == RomanNumeral.new(13)
    end

    test "complex conversions" do
      "XXIV".to_roman.assert   == RomanNumeral.new(24)
    end
  end

end

