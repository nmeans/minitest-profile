# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/profile/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-profile"
  spec.version       = Minitest::Profile::VERSION
  spec.authors       = ["Nickolas Means"]
  spec.email         = ["nick@heliumsyndicate.com"]
  spec.description   = %q{Outputter to display the slowest tests in a minitest suite}
  spec.summary       = %q{Outputter to display the slowest tests in a minitest suite}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
