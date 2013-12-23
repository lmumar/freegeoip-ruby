# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freegeoip/version'

Gem::Specification.new do |spec|
  spec.name          = "freegeoip"
  spec.version       = Freegeoip::VERSION
  spec.authors       = ["Lord Norlan Mumar"]
  spec.email         = ["kuling.guwapo@gmail.com"]
  spec.description   = %q{Ruby Client for Freegeoip}
  spec.summary       = %q{Ruby Client for Freegeoip}
  spec.homepage      = "http://github.com/lmumar"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "yajl-ruby"
  spec.add_dependency "httparty"
end

