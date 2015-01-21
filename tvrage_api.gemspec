# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tvrage_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'tvrage_api'
  spec.version       = TvrageApi::VERSION
  spec.authors       = ['Krzysztof Wawer']
  spec.email         = ['krzysztof.wawer@gmail.com']
  spec.description   = %q{Ruby client for accessing TV shows information from the tvrage.com API}
  spec.summary       = %q{Ruby client for tvrage.com API}
  spec.homepage      = %q{http://github.com/wafcio/tvrage_api}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'service_api', '~> 0.1.0'
  spec.add_runtime_dependency 'ov', '~> 0.1.0'
  spec.add_runtime_dependency 'hashie', '>= 1.1.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'coveralls', '>= 0.7'
  spec.add_development_dependency 'awesome_print', '~> 1.2.0'
end
