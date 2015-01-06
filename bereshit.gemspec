# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bereshit/version'

Gem::Specification.new do |spec|
  spec.name          = "bereshit"
  spec.version       = Bereshit::VERSION
  spec.authors       = ["Guinsly Mondesir"]
  spec.email         = ["agmond@gmx.com.br"]
  spec.summary       = %q{Bereshit mean 'in the beginning...' in hebrew. This gems is a lorem ipsum based on Genesis 1:1 -- the first Chapter of the book of Genesis (Torah/Bible)}
  spec.description   = %q{Bereshit mean 'in the beginning...' in hebrew. This gems is a lorem ipsum based on Genesis 1:1 -- the first Chapter of the book of Genesis (Torah/Bible)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
