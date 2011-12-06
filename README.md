Roman Numerals
==============

DESCRIPTION
-----------

The Roman library provides a full-fledged Numeric subclass
for working in Roman Numerals.

HOW TO USE
----------

We can create Roman numerals via the usual instantiation.

  RomanNumeral.new(1)    #=> #<RomanNumeral:0x7f10e378ad48 @i=1>

But to make it easier the Integer class is extended with #to_roman.

  1.to_roman             #=> #<RomanNumeral:0x7f10e378ad48 @i=1>

Roman numerals can also be formed from their String represnetation.

  RomanNumeral.new('I')  #=> #<RomanNumeral:0x7f10e378ad48 @i=1>

  'I'.to_roman           #=> #<RomanNumeral:0x7f10e378ad48 @i=1>

Because +RomanNumeral+ is a full-fledged subclass of Numeric,
we can work with them like we can an Integer.

   a = 2.to_roman   #=> #<RomanNumeral:0x7f10e378ad48 @i=2>
   b = 3.to_roman   #=> #<RomanNumeral:0x7f10e378ad48 @i=3>
   r = a + b        #=> #<RomanNumeral:0x7f10e378ad48 @i=5>

When we want to see the actual Romanized figure, we simple
call #to_s.

   r.to_s           #=> "IV"


FAQ
---

<b>Q. What didn't you just extend Integer to return the Roman
numeral as a String?</b>

A. That works, and probably more often than not would suffice.
But when it is necessary to convert back and forth between Roman
numerals and decimals it becomes more of an issue. For example:

  index = "IV".roman.roman

  (1..10).each do |i|
    (index + i).roman
  end


COPYRIGHT
---------

Copyright (c) 2010 Thomas Sawyer

Roman is destributed under the terms of the MIT license.

Please see LICENSE file for details.

