# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cunningham/version'

Gem::Specification.new do |spec|
  spec.name          = "cunningham"
  spec.version       = Cunningham::VERSION
  spec.authors       = ["Corey Woodcox"]
  spec.email         = ["corey.woodcox@gmail.com"]
  spec.description   = %q{Cunningham is a gem for caching requests to the Stripe
                          API to make most interactions with it fast as a C-4R.}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = "https://github.com/tanner-labs/cunningham"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"

  spec.add_dependency "stripe", "~> 1.11.0"
  spec.add_dependency "redis", "~> 3.0.7"
end
