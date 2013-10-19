# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lilyplaying/version'

Gem::Specification.new do |spec|
  spec.name          = "lilyplaying"
  spec.version       = LilyPlaying::VERSION
  spec.authors       = ["Christopher Giroir"]
  spec.email         = ["kelsin@valefor.com"]
  spec.description   = LilyPlaying::DESCRIPTION
  spec.summary       = LilyPlaying::DESCRIPTION
  spec.homepage      = "https://github.com/Kelsin/lilyplaying"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('commander', "~> 4.1.3")
  spec.add_runtime_dependency('lastfm', "~> 1.21.0")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
