Test.run do |r|
  r.requires << 'lemon'
  r.requires << 'ae'
  r.loadpath << 'lib'
  r.files << 'test/*_case.rb'
end

