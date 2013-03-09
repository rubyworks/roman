# Roman Numerals

[Website](http://rubyworks.github.com/roman) /
[Documentation](http://rubydoc.info/gems/roman/frames) /
[Report Issue](http://github.com/rubyworks/roman/issues) /
[Source Code](http://github.com/rubyworks/roman) &nbsp; &nbsp;
[![Flattr Me](http://api.flattr.com/button/flattr-badge-large.png)](http://flattr.com/thing/324911/Rubyworks-Ruby-Development-Fund)

## STATUS

[![Gem Version](https://badge.fury.io/rb/roman.png)](http://badge.fury.io/rb/roman)
[![Build Status](https://travis-ci.org/rubyworks/roman.png)](https://travis-ci.org/rubyworks/roman)


## ABOUT

The Roman library provides a full-fledged Numeric subclass
for working in Roman Numerals.

In most cases this library is probably overkill. Instead, 
[Ruby Facets](http://rubyworks.github.com/facets) provides Roman numeral
core extension methods for the `Integer` and `String` classes which are
likely to do everything that one really needs. However, the RomanNumeral
class has one advantage. It can be maniputated like any other Numeric
object without having to switch back and forth between representations.
Moreover, and probably most importantly, it makes an excellect example of
how to create a Numeric subclass in Ruby.


## HOW TO USE

We can create Roman numerals via the usual instantiation.

    RomanNumeral.new(1)    #=> #<RomanNumeral:0x7f10e378ad48 @i=1>

But to make it easier the Integer class is extended with #to_roman.

    1.to_roman             #=> #<RomanNumeral:0x7f10e378ad48 @i=1>

Roman numerals can also be formed from their String represnetation.

    RomanNumeral.new('I')  #=> #<RomanNumeral:0x7f10e378ad48 @i=1>

    'I'.to_roman           #=> #<RomanNumeral:0x7f10e378ad48 @i=1>

Because +RomanNumeral+ is a full-fledged subclass of Numeric,
we can work with them like we can an Integer.

     a = 2.to_roman        #=> #<RomanNumeral:0x7f10e378ad48 @i=2>
     b = 3.to_roman        #=> #<RomanNumeral:0x7f10e378ad48 @i=3>
     r = a + b             #=> #<RomanNumeral:0x7f10e378ad48 @i=5>

When we want to see the actual Romanized figure, we simple
call #to_s.

     r.to_s                #=> "IV"


## HOW TO INSTALL

Using RubyGems:

    gem install roman


## COPYRIGHT & LICENSE

Copyright (c) 2007 Rubyworks

Roman is destributed under the terms of the 
[BSD-2-Clause](http://spdx.org/license/BSD-2-Clause) license.

Please see LICENSE.txt file for details.
