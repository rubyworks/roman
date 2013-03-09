require 'roman'

TestCase RomanNumeral do

  Method :to_s do
    test "one to three" do
      1.to_roman.to_s.assert == 'I'
      2.to_roman.to_s.assert == 'II'
      3.to_roman.to_s.assert == 'III'
    end
  end

  Method :to_s do
    test "four" do
      4.to_roman.to_s.assert == 'IV'
    end
  end

  Method :to_s do
    test "five to eight" do
      5.to_roman.to_s.assert == 'V'
      6.to_roman.to_s.assert == 'VI'
      7.to_roman.to_s.assert == 'VII'
      8.to_roman.to_s.assert == 'VIII'
    end
  end

  Method :to_s do
    test "nine" do
      9.to_roman.to_s.assert == 'IX'
    end
  end

  Method :to_s do
    test "ten to thriteen" do
      10.to_roman.to_s.assert == 'X'
      11.to_roman.to_s.assert == 'XI'
      12.to_roman.to_s.assert == 'XII'
      13.to_roman.to_s.assert == 'XIII'
    end
  end

  Method :to_s do 
    test "fourteen plus" do
      14.to_roman.to_s.assert == 'XIV'
      15.to_roman.to_s.assert == 'XV'
      16.to_roman.to_s.assert == 'XVI'
    end
  end

  Method :+ do
    test do
      (5.to_roman + 6).assert == 11
      (2.to_roman + 3.to_roman).assert == 5
    end
  end

end

