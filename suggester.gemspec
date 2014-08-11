$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'suggester/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'suggester'
  s.version     = Suggester::VERSION
  s.authors     = ['Dino Rosic']
  s.email       = ['dino.rosic@me.com']
  s.homepage    = 'http://github.com/DinoRosic/suggester'
  s.summary     = 'TODO: Summary of Suggester.'
  s.description = 'TODO: Description of Suggester.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency('faraday', '0.9.0')
  s.add_dependency('faraday_middleware', '~> 0.9.0')
  s.add_development_dependency('rspec', '~> 3.0.0')
end
