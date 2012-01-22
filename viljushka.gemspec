# -*- coding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "viljushka"
  s.version = "0.1.2"
  s.homepage = "http://github.com/dotemacs/viljushka"
  s.authors = ["Aleksandar Simić"]
  s.date = "2012-01-22"
  s.summary = "Character set conversion for Serbian"
  s.description = "Character conversion from Latin alphabet to Serbian Cyrillic script and vice versa"
  s.email = "asimic@gmail.com"
  s.require_paths = "lib"
  s.files      = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec,features}/*`.split("\n")

  s.required_ruby_version = '>= 1.9.2'
  s.required_rubygems_version = '>= 1.8.10'

  {
    'rspec'    => '>= 2.0.0',
    'cucumber' => '>= 1.0.0'
  }.each do |lib, version|
    s.add_development_dependency lib, version
  end
end
