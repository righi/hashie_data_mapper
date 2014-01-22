lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'hashie_data_mapper/version'

Gem::Specification.new do |spec|
  spec.name          = "hashie_data_mapper"
  spec.version       = HashieDataMapper::VERSION
  spec.authors       = ["Michael Amor Righi"]
  spec.email         = ["michael@righi.me"]
  spec.description   = %q{Extensions to make Hashie more ideal for building data mappers}
  spec.summary       = %q{Hashie for data mappers}
  spec.homepage      = 'https://github.com/righi/hashie_data_mapper'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.license       = "MIT"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency 'rake', '~> 0.9.2'
  spec.add_development_dependency 'rspec', '~> 2.5'

  spec.add_dependency 'hashie', '>= 1.2.0'
end
