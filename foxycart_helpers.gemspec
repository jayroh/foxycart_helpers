# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foxycart_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = 'foxycart_helpers'
  spec.version       = FoxycartHelpers::VERSION
  spec.authors       = ['Robert Coleman']
  spec.email         = ['github@robert.net.nz']

  spec.summary       = %q{Helpers for using FoxyCart in Ruby}
  spec.description   = %q{Helpers for using FoxyCart in Ruby}
  spec.homepage      = 'https://github.com/rjocoleman/foxycart_helpers'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'ruby-rc4'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'nori'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_dependency 'pry'
end
