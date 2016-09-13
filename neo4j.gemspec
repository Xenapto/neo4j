lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'neo4j/version'

Gem::Specification.new do |s|
  s.name     = 'neo4j_legacy'
  s.version  = Neo4j::VERSION
  s.required_ruby_version = '>= 1.9.3'

  s.authors  = 'Andreas Ronge, Brian Underwood, Chris Grigg, Dominic Sayers'
  s.email    = 'andreas.ronge@gmail.com, brian@brian-underwood.codes, chris@subvertallmedia.com, dominic@sayers.cc'
  s.homepage = 'https://github.com/xenapto/neo4j/'
  s.summary = 'A graph database for Ruby'
  s.license = 'MIT'
  s.description = <<-EOF
A Neo4j OGM (Object-Graph-Mapper) for use in Ruby on Rails and Rack frameworks heavily inspired by ActiveRecord.
This fork enables this gem to be used in Rails 3.2 projects
  EOF

  s.require_path = 'lib'
  s.files = Dir.glob('{bin,lib,config}/**/*') + %w(README.md CHANGELOG.md CONTRIBUTORS Gemfile neo4j.gemspec)
  s.executables = ['neo4j-jars']
  s.has_rdoc = true
  s.extra_rdoc_files = %w( README.md )
  s.rdoc_options = ['--quiet', '--title', 'Neo4j.rb', '--line-numbers', '--main', 'README.rdoc', '--inline-source']

  s.add_dependency('orm_adapter', '~> 0.5.0')
  s.add_dependency('activemodel', '>= 3.2', '< 5.1')
  s.add_dependency('activesupport', '>= 3.2', '< 5.1')
  s.add_dependency('thread_safe', '~> 0.3', '>= 0.3.4')
  s.add_dependency('neo4j-core', '>= 6.0.0', '< 7.0.0')
  s.add_dependency('neo4j-community', '~> 2.0') if RUBY_PLATFORM =~ /java/
  s.add_development_dependency('railties', '>= 3.2', '< 5.1')
  s.add_development_dependency('pry')
  s.add_development_dependency('os')
  s.add_development_dependency('rake')
  s.add_development_dependency('yard')
  s.add_development_dependency('guard')
  s.add_development_dependency('guard-rubocop')
  s.add_development_dependency('guard-rspec')
  s.add_development_dependency('rubocop', '~> 0.34.0')
end
