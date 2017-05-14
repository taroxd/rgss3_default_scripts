# coding: utf-8
# lib = File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rgss3_default_scripts"
  spec.version       = '1.0.2'
  spec.authors       = ["taroxd"]
  spec.email         = ["taroxd@outlook.com"]

  spec.summary       = "default scripts in RGSS3"
  spec.homepage      = "https://github.com/taroxd/rgss3_default_scripts"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
