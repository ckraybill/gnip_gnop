# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gnip_gnop/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Kraybill"]
  gem.email         = ["ckraybill@gmail.com"]
  gem.description   = %q{A ruby library that given a Gnip activity
                         stream XML <entry>, will allow you to
                         interact with that entry as a first-class
                         Ruby object.}
  gem.summary       = %q{Work with Gnip activity streams with joy}
  gem.homepage      = "https://www.github.com/ckraybill/gnip_gnop"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gnip_gnop"
  gem.require_paths = ["lib"]

  gem.add_dependency 'happymapper'

  gem.version       = GnipGnop::VERSION
end
