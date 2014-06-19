$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ruload/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ruload"
  s.version     = Ruload::VERSION
  s.authors     = ["Marcio Mangar"]
  s.email       = ["marcio.mangar@gmail.com"]
  s.homepage    = "http://about.me/mangar"
  s.summary     = "TODO: Summary of Ruload."
  s.description = "TODO: Description of Ruload."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.5"
  
  s.add_development_dependency "sqlite3"
end
