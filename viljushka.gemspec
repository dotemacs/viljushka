# -*- coding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{viljushka}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aleksandar Simić", "Dalibor Nasevic"]
  s.date = %q{2012-01-22}
  s.description = %q{Character conversion from Latin alphabet to Serbian Cyrillic script and vice versa}
  s.email = %q{asimic@gmail.com}
  s.files = [
             "README.md",
             "Rakefile",
             "LICENSE",
             "VERSION",
             "lib/viljushka.rb",
             "lib/viljushka/boc.rb",
            ]
  s.homepage = %q{http://github.com/dalibor/cyrillizer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.8.10}
  s.summary = %q{Character conversion from Latin alphabet to Serbian Cyrillic script and vice versa}
  s.test_files = [
                  "spec/spec_helper.rb",
                  "spec/viljushka_spec.rb",
                  "features/convert_latin_to_cyrillic.feature",
                  "features/step_definitions/convert_latin_to_cyrillic_steps.rb",
                  "features/support/env.rb"
                 ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
