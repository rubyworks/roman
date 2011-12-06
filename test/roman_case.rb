require 'roman'

TestCase RomanNumeral do

  Unit :to_roman do
    1.to_roman.assert == RomanNumeral.new(1)
    2.to_roman.assert == RomanNumeral.new(2)
  end

  Unit :to_s => "one to three" do
    1.to_roman.to_s.assert == 'I'
    2.to_roman.to_s.assert == 'II'
    3.to_roman.to_s.assert == 'III'
  end

  Unit :to_s => "four" do
    4.to_roman.to_s.assert == 'IV'
  end

  Unit :to_s => "five to eight" do
    5.to_roman.to_s.assert == 'V'
    6.to_roman.to_s.assert == 'VI'
    7.to_roman.to_s.assert == 'VII'
    8.to_roman.to_s.assert == 'VIII'
  end

  Unit :to_s => "nine" do
    9.to_roman.to_s.assert == 'IX'
  end

  Unit :to_s => "ten to thriteen" do
    10.to_roman.to_s.assert == 'X'
    11.to_roman.to_s.assert == 'XI'
    12.to_roman.to_s.assert == 'XII'
    13.to_roman.to_s.assert == 'XIII'
  end

  Unit :to_s => "fourteen plus" do
    14.to_roman.to_s.assert == 'XIV'
    15.to_roman.to_s.assert == 'XV'
    16.to_roman.to_s.assert == 'XVI'
  end

  Unit :+ do
    (5.to_roman + 6).assert == 11
    (2.to_roman + 3.to_roman).assert == 5
  end

end

