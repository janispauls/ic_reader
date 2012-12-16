# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ic_reader/version'

Gem::Specification.new do |gem|
  gem.name          = "ic_reader"
  gem.version       = IcReader::VERSION
  gem.authors       = ["Jānis Pauls"]
  gem.email         = ["janis.pauls@gmail.com"]
  gem.description   = "Gem for reading metadata from icecast server"
  gem.summary       = "Gem for reading metadata from icecast server"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
