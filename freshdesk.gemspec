# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freshdesk/version'

Gem::Specification.new do |spec|
  spec.name          = 'galetahub-freshdesk'
  spec.version       = Freshdesk::VERSION
  spec.authors       = ['Galeta Igor']
  spec.email         = ['galeta.igor@gmail.com']

  spec.summary       = %q(Freshdesk client for API v2)
  spec.description   = %q(Simple Freshdesk client for API v2 based on httparty gem)
  spec.homepage      = 'https://github.com/galetahub/freshdesk'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
