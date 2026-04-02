Gem::Specification.new do |s|
  s.name        = 'roman'
  s.version     = '0.3.0'
  s.summary     = 'Real Roman Numerals'
  s.description = 'RomanNumeral class for working with roman numerals in a native form.'

  s.authors     = ['Trans']
  s.email       = ['transfire@gmail.com']

  s.homepage    = 'https://github.com/rubyworks/roman'
  s.license     = 'BSD-2-Clause'

  s.required_ruby_version = '>= 3.1'

  s.files       = Dir['lib/**/*', 'LICENSE.txt', 'README.md', 'HISTORY.md']
  s.require_paths = ['lib']

  s.add_development_dependency 'rake', '>= 13'
  s.add_development_dependency 'lemon', '>= 0.9'
  s.add_development_dependency 'ae', '>= 1.8'
  s.add_development_dependency 'rubytest', '>= 0.8'
end
