require 'roman'

TestCase Fixnum do

  Method :to_roman do
    test do
      1.to_roman.assert == RomanNumeral.new(1)
      2.to_roman.assert == RomanNumeral.new(2)
    end
  end

end

