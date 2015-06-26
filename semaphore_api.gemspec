# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'semaphore_api/version'

Gem::Specification.new do |spec|
  spec.name          = "semaphore_api"
  spec.version       = SemaphoreApi::VERSION
  spec.authors       = ["Igor Sarcevic"]
  spec.email         = ["igisar@gmail.com"]
  spec.license       = "MIT"

  spec.summary       = %q{Unofficial wrapper around SemaphoreCI's API}
  spec.homepage      = "https://github.com/shiroyasha/semaphore_api"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "zoid", "~> 0.1"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "byebug", "~> 5.0"
end
