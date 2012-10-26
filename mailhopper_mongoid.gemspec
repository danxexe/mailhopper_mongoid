# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mailhopper_mongoid/version"

Gem::Specification.new do |s|
  s.name        = "mailhopper_mongoid"
  s.version     = MailhopperMongoid::VERSION
  s.authors     = ["danxexe"]
  s.email       = ["danilo@mobvox.com.br"]
  s.homepage    = "http://www.mobvox.com.br"
  s.summary     = %q{Mongoid backend for Mailhopper}
  s.description = %q{Mongoid based replacement Mailhopper::Email model}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "mailhopper", "~> 0.2.0"
end
