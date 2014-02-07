# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dear/version'

Gem::Specification.new do |spec|
  spec.name          = "dear"
  spec.version       = Dear::VERSION
  spec.authors       = ["Kristen Mills"]
  spec.email         = ["kristen@kristen-mills.com"]
  spec.summary       = "Because it's nice to write letters"
  spec.description   = "Because it's nice to write letters"
  spec.homepage      = "https://github.com/letters-to-your-terminal/dear"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "dear-ruby"
  spec.add_runtime_dependency "dear-rails"
  spec.add_runtime_dependency "dear-git"
end
