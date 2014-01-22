require File.expand_path('../lib/hashie_data_mapper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michael Amor Righi"]
  gem.email         = ["michael@righi.me"]
  gem.description   = %q{Extensions to make Hashie more ideal for building data mappers}
  gem.summary       = %q{Hashie for data mappers}
  gem.homepage      = 'https://github.com/righi/hashie_data_mapper'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "hashie_data_mapper"
  gem.require_paths = ['lib']
  gem.version       = HashieDataMapper::VERSION
  gem.license       = "MIT"

  gem.add_development_dependency 'rake', '~> 0.9.2'
  gem.add_development_dependency 'rspec', '~> 2.5'

  gem.add_dependency 'hashie', '>= 1.2.0'
end
