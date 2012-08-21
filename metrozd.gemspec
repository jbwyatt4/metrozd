# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "metrozd"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["John B. Wyatt IV"]
  s.date = "2012-08-21"
  s.description = "Generate a US Metro Database"
  s.email = "jbwyatt4@gmail.com"
  s.extra_rdoc_files = ["CHANGELOG", "README.rdoc", "tasks/getMetroData.rake"]
  s.files = ["CHANGELOG", "README.rdoc", "Rakefile", "init.rb", "tasks/getMetroData.rake", "test/test_metrozd.rb", "Manifest", "metrozd.gemspec"]
  s.homepage = "http://github.com/jbwyatt4/metrozd.git"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Metrozd", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "metrozd"
  s.rubygems_version = "1.8.24"
  s.summary = "Generate a US Metro Database"
  s.test_files = ["test/test_metrozd.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 0"])
  end
end
