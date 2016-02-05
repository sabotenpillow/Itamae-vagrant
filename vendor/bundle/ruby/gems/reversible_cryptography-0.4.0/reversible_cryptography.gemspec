# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reversible_cryptography/version'

Gem::Specification.new do |spec|
  spec.name          = "reversible_cryptography"
  spec.version       = ReversibleCryptography::VERSION
  spec.authors       = ["Takumi MIURA"]
  spec.email         = ["mitaku1104@gmail.com"]

  spec.summary       = %q{A Símplifìed reversible encryption solution}
  spec.description   = %q{A Símplifìed reversible encryption solution}
  spec.homepage      = "https://github.com/mitaku/reversible_cryptography"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end