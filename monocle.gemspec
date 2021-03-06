# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'monocle/version'

Gem::Specification.new do |spec|
  spec.name          = "monocle-views"
  spec.version       = Monocle::VERSION
  spec.authors       = ["Leonardo Bighetti", "Eric Draut"]
  spec.email         = ["eric@invitedhome.com"]

  spec.summary       = %q{Monocle helps you manage your DB views.}
  spec.description   = %q{Monocle helps you manage your DB views.}
  spec.homepage      = "https://github.com/tommyfriendhusen08/monocle"
  spec.license       = "MIT"

  spec.files         = Dir['Rakefile', '{app,lib}/**/*', 'README*', 'LICENSE*']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "pg"
  spec.add_development_dependency "database_cleaner"

  spec.add_dependency "rake"
  spec.add_dependency "activesupport", ">= 4", "< 6"
  spec.add_dependency "activerecord", ">= 4",  "< 6"
end
