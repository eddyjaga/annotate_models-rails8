# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'annotate/version'

Gem::Specification.new do |s|
  s.name = 'db-annotate'
  s.version = Annotate.version

  s.required_ruby_version = '>= 3.2.0'
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.authors = ['Alex Chaffee', 'Cuong Tran', 'Marcos Piccinini', 'Turadg Aleahmad', 'Jon Frisby']
  s.description = 'Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema. Forked from annotate_models with Rails 8 and Ruby 3.4+ support.'
  s.email = ['alex@stinky.com', 'cuong.tran@gmail.com', 'x@nofxx.com', 'turadg@aleahmad.net', 'jon@cloudability.com']
  s.executables = ['annotate']
  s.extra_rdoc_files = ['README.md', 'CHANGELOG.md']
  s.files = `git ls-files -z LICENSE.txt *.md *.gemspec bin lib`.split("\x0")
  s.homepage = 'https://github.com/eddyjaga/annotate_models-rails8'
  s.licenses = ['Ruby']
  s.require_paths = ['lib']
  s.summary = 'Annotates Rails Models, routes, fixtures, and others based on the database schema. Rails 8 compatible.'

  s.add_dependency(%q<rake>, '>= 10.4', '< 14.0')
  s.add_dependency(%q<activerecord>, ['>= 7.1', '< 9.0'])

  s.metadata = {
    "bug_tracker_uri" => "https://github.com/eddyjaga/annotate_models-rails8/issues",
    "source_code_uri" => "https://github.com/eddyjaga/annotate_models-rails8",
    "changelog_uri" => "https://github.com/eddyjaga/annotate_models-rails8/blob/develop/CHANGELOG.md",
    'rubygems_mfa_required' => 'true'
  }
end
