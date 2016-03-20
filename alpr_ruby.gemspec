# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alpr_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'alpr_ruby'
  spec.version       = AlprRuby::VERSION
  spec.authors       = ["Mateusz Urbański"]
  spec.email         = ['mateuszurbanski@yahoo.pl']

  spec.summary       = 'Ruby wrapper for OpenALPR Cloud API.'
  spec.description   = 'Ruby wrapper for OpenALPR Cloud API. See
                        https://http://doc.openalpr.com/bindings.html#cloud-api-commercial
                        for more details'
  spec.homepage      = 'https://github.com/MatUrbanski/alpr_ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'typhoeus'
  spec.add_dependency 'virtus'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'vcr', '~> 3.0'
end
