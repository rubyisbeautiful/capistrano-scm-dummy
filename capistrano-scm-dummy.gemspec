# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/dummy/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-scm-dummy'
  spec.version       = Capistrano::Dummy::VERSION
  spec.authors       = ['rubyisbeautiful']
  spec.email         = ['bcptaylor@gmail.com']

  spec.summary       = %q{dummy SCM for cap 3}
  spec.description   = %q{dummy SCM for cap 3}
  spec.homepage      = 'https://github.com/rubyisbeautiful'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'

  spec.add_dependency 'capistrano', '~> 3.0'
end
