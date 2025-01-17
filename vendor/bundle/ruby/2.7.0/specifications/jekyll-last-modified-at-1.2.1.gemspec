# -*- encoding: utf-8 -*-
# stub: jekyll-last-modified-at 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-last-modified-at".freeze
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Garen J. Torikian".freeze]
  s.date = "2019-12-02"
  s.homepage = "https://github.com/gjtorikian/jekyll-last-modified-at".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "A liquid tag for Jekyll to indicate the last time a file was modified.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.7", "< 5.0"])
    s.add_runtime_dependency(%q<posix-spawn>.freeze, ["~> 0.3.9"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop-performance>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop-standard>.freeze, [">= 0"])
    s.add_development_dependency(%q<spork>.freeze, [">= 0"])
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 3.7", "< 5.0"])
    s.add_dependency(%q<posix-spawn>.freeze, ["~> 0.3.9"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-performance>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-standard>.freeze, [">= 0"])
    s.add_dependency(%q<spork>.freeze, [">= 0"])
  end
end
