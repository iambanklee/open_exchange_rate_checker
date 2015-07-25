# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'open_exchange_rate_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "open_exchange_rate_checker"
  spec.version       = OpenExchangeRateChecker::VERSION
  spec.authors       = ["Bank Lee"]
  spec.email         = ["iambanklee@gmail.com"]
  spec.summary       = "API handler for Open Exchange Rates API https://openexchangerates.org"
  spec.description   = "API handler for Open Exchange Rates API https://openexchangerates.org"
  spec.homepage      = ""
  spec.license       = "All right reserved. Bank Lee 2015"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "watchr"
  spec.add_development_dependency "pry"
end
