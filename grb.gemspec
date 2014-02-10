# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grb/version'

Gem::Specification.new do |spec|
  spec.name          = "mattgillooly-grb"
  spec.version       = Grb::VERSION
  spec.authors       = ["Jinzhu Zhang"]
  spec.email         = ["wosmvp@gmail.com"]
  spec.summary       = %{A tool to simplify working with remote branches}
  spec.description   = %{A tool to simplify working with remote branches}
  spec.homepage      = "http://github.com/jinzhu/grb"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
