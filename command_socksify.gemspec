# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'command_socksify/version'

Gem::Specification.new do |spec|
  spec.name          = "command_socksify"
  spec.version       = CommandSocksify::VERSION
  spec.authors       = ["Takeo Fujita"]
  spec.email         = ["takeofujita@gmail.com"]

  spec.summary       = %q{socksify command}
  spec.description   = %q{socksify command}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "socksify"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
