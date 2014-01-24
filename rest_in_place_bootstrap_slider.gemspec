# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rest_in_place_bootstrap_slider/version'

Gem::Specification.new do |spec|
  spec.name          = "rest_in_place_bootstrap_slider"
  spec.version       = RestInPlaceBootstrapSlider::VERSION
  spec.authors       = ["Jens Bissinger"]
  spec.email         = ["mail@jens-bissinger.de"]
  spec.description   = %q{An AJAX Inplace-Editor + Bootstrap-Slider for the Rails 3.1+ asset pipeline}
  spec.summary       = %q{Build upon rest_in_place and bootstrap-slider-rails gems.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
