# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dpla/version'

Gem::Specification.new do |gem|
  gem.name          = "dpla"
  gem.version       = Dpla::VERSION
  gem.authors       = ["Tom Kiefhaber"]
  gem.email         = ["tkiefhab@gmail.com"]
  gem.description   = %q{A wrapper for the Digital Public Library of America API.}
  gem.summary       = %q{A wrapper for the Digital Public Library of America API.}
  gem.homepage      = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "webmock"
end
