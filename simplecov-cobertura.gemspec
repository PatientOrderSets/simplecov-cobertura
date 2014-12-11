# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplecov/cobertura/version'

Gem::Specification.new do |spec|
  spec.name          = "simplecov-cobertura"
  spec.version       = Simplecov::Cobertura::VERSION
  spec.authors       = ["Alfred Wong"]
  spec.email         = ["alfred.wong@thinkresearchgroup.com"]
  spec.summary       = %q{A simplecov formatter that outputs in cobertura format.}
  spec.description   = %q{A simplecov formatter that outputs in cobertura format for Jenkins CI or any other Java based CI Server.}
  spec.homepage      = "https://github.com/PatientOrderSets/simplecov-cobertura"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.4.2"
end
