# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'log-slf4j/version'

Gem::Specification.new do |gem|
  gem.name          = 'log-slf4j'
  gem.version       = Log::SLF4J::VERSION
  gem.authors       = ['Tom Czarniecki']
  gem.email         = ['github@tomczarniecki.com']
  gem.description   = %q{Provides a ruby-compatible logger that delegates to SLF4J}
  gem.summary       = %q{Provides a ruby-compatible logger that delegates to SLF4J}
  gem.homepage      = 'https://github.com/tomcz/log-slf4j'
  gem.license       = 'https://github.com/tomcz/log-slf4j/blob/master/LICENSE'

  gem.files = Dir['lib/**/*'] + ['README.md', 'LICENSE']
  gem.require_paths = ['lib']
end
