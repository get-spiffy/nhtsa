# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nhtsa/version'

Gem::Specification.new do |spec|
  spec.name          = "nhtsa"
  spec.version       = Nhtsa::VERSION
  spec.authors       = ["Mwaki Harri Magotswi"]
  spec.email         = ["magotswi@gmail.com"]

  spec.summary       = %q{A simple ruby gem to access NHTSA data.}
  spec.description   = %q{NHTSA offers data on safety ratings, recalls, complaints, civil penalty payments, and child safety seat inspection station locations through their various web APIs. The main motivation for this gem is to access the NHTSA WebAPIs and make the data available to use for any ruby application.}
  spec.homepage      = "https://github.com/omundu/nhtsa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
