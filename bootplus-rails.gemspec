# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootplus/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'bootplus-rails'
  spec.version       = Bootplus::Rails::VERSION
  spec.authors       = ['T145']
  spec.email         = ['gnosoman@gmail.com']

  spec.summary       = %q{Ruby gem for Bootplus assets}
  spec.description   = %q{Ruby gem for Bootplus assets}
  spec.homepage      = 'https://github.com/T145/bootplus-rails'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "'http://rubygems.org'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Rails compatiblity
  spec.files = Dir['{lib,vendor}/**/*'] + %w(MIT-LICENSE README.md)
  #spec.add_dependency "railties", "~> 3.1"
  spec.add_dependency 'font-awesome-rails'
end
