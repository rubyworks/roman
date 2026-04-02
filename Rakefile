require 'rubygems/package_task'

gemspec = Gem::Specification.load('roman.gemspec')

Gem::PackageTask.new(gemspec) do |pkg|
  pkg.need_zip = false
  pkg.need_tar = false
end

desc "Run tests"
task :test do
  sh 'bundle exec ruby -Ilib -Itest -rlemon -rae -rrubytest/autorun test/roman_case.rb test/string_case.rb test/fixnum_case.rb'
end

task :default => :test
