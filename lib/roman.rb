# Work with Roman numerals just like normal Integers.
class RomanNumeral < Numeric

  include Comparable

  # The largest integer representable as a roman
  # numerable by this module.
  MAX = 3999

  # Taken from O'Reilly's Perl Cookbook 6.23. Regular Expression Grabbag.
  REGEXP = /^M*(D?C{0,3}|C[DM])(L?X{0,3}|X[LC])(V?I{0,3}|I[VX])$/i

  #
  ROMAN_VALUES_ASSOC = [
    ["M", 1000],
    ["CM", 900],
    ["D",  500],
    ["CD", 400],
    ["C",  100],
    ["XC",  90],
    ["L",   50],
    ["XL",  40],
    ["X",   10],
    ["IX",   9],
    ["V",    5],
    ["IV",   4],
    ["I",    1]
  ]

  #
  ROMAN_VALUES = ROMAN_VALUES_ASSOC.inject({}){ |h,(r,a)| h[r] = a; h }

  #
  def self.from_integer(int)
    #return nil if integer > MAX
    return "-#{(-int).to_roman}" if int < 0
    return "" if int == 0
    ROMAN_VALUES_ASSOC.each do |(i, v)|
      return(i + from_integer(int-v)) if v <= int 
    end
  end

  #
  def self.to_integer(roman)
    #return nil unless roman_string.is_roman_numeral?
    last = roman[-1,1].upcase
    roman.reverse.split('').inject(0) do |result, c|
      c = c.upcase
      if ROMAN_VALUES[c] < ROMAN_VALUES[last]
        result -= ROMAN_VALUES[c]
      else
        last = c
        result += ROMAN_VALUES[c]
      end
    end
  end

  # Returns true if +string+ is a roman numeral.
  def self.is_roman_numeral?(string)
    REGEXP =~ string
  end


  # Create a new instance from an Integer, String
  # or other RomanNumeral.
  def initialize(val)  
    case val
    when String
      @i = self.class.to_integer(val)  
      @s = val.frozen? ? val : val.dup.freeze  
    when Numeric  
      @i = val.to_i  
    else  
      raise ArgumentError, 'Cannot convert %p' % val  
    end  
  end

  # hash code calculation
 
  def hash
    @i.hash
  end

  #
  def to_s
    @s ||= self.class.from_integer(@i)
  end

  #
  def to_num ; @i ; end

  #
  def to_i ; @i ; end

  #
  def to_int ; @i ; end

  #
  def to_arabic ; @i ; end

  #
  def to_roman
    self  
  end  

  #
  def eql?(num)
    self.class.equal?(num.class) && @i == num.to_i  
  end  

  #
  def ==(num)
    @i == num.to_num  
  end

  #
  def coerce(o)  
    [self.class.new(o.to_int), self]  
  end

  #
  def <=>(o)  
    case o
    when Numeric
      @i <=> o.to_num
    else
      a, b = o.coerce(self)
      a <=> b
    end rescue nil  
  end
 
  # various tests that Fixnum also has
 
  def zero?
    @i.zero?
  end
 
  def nonzero?
    @i.nonzero?
  end
 
  def odd?
    @i.odd?
  end
 
  def even?
    @i.even?
  end
 
  def between?(a, b)
    @i.between? a, b
  end
 
  def integer?
    true
  end
 
  def real?
    true
  end

  def +@
    self
  end
 
  def -@
    self.class.new(-@i)
  end

  #
  def +(o)
    if Numeric === o
      self.class.new(@i + o.to_num)
    else
      a, b = o.coerce(self)
      a + b
    end
  end

  #
  def -(o)
    if Numeric === o
      self.class.new(@i - o.to_num)
    else
      a, b = o.coerce(self)
      a - b
    end
  end

  #
  def *(o)
    if Numeric === o
      self.class.new(@i * o.to_num)
    else
      a, b = o.coerce(self)
      a * b
    end
  end

  #
  def /(o)
    if Numeric === o
      self.class.new(@i / o.to_num)
    else
      a, b = o.coerce(self)
      a / b
    end
  end

  def **(o)
    if Numeric === o
      self.class.new(@i / o.to_num)
    else
      a, b = o.coerce(self)
      a / b
    end
  end
 
  def <<(o)
    self.class.new(@i << o.to_int)
  end
 
  def >>(o)
    self.class.new(@i >> o.to_int)
  end
 
  # bit operators
 
  def &(o)
    self.class.new(@i & o.to_int)
  end
 
  def |(o)
    self.class.new(@i | o.to_int)
  end

  # Freeze
  def freeze
    to_s
    super
  end

end


class Integer

  #
  def self.from_roman(roman)
    RomanNumeral.to_integer(roman)
  end

  # Converts this integer to a roman numeral.
  def to_roman
    RomanNumeral.new(self)
  end

end


class String

  # Considers string a roman numeral numeral,
  # and converts it to the corresponding integer.
  def to_roman
    RomanNumeral.new(self)
  end

  # Returns true if a valid roman numeral.
  def is_roman_numeral?
    RomanNumeral.is_roman_numeral?(self)
  end

end


class Numeric

  #
  def to_num
    self
  end

end

