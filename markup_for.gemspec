# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "markup_for/version"

Gem::Specification.new do |s|
  s.name        = "markup_for"
  s.version     = MarkupFor::VERSION
  s.authors     = ["Andrés B."]
  s.email       = ["andres.b.dev@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Simple gem for use a markup language in a column}
  s.description = %q{Simple gem for use a markup language in a column}

  s.rubyforge_project = "markup_for"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"

  # https://github.com/tanoku/redcarpet
  s.add_dependency "redcarpet", "~> 2.0.1"      # Markdown
  # https://github.com/jgarber/redcloth
  s.add_dependency "RedCloth", "~> 4.2.9"       # Textile
  # https://github.com/rdoc/rdoc
  s.add_dependency "rdoc", "~> 3.11"            # Rdoc
  # https://github.com/bdewey/org-ruby
  s.add_dependency "org-ruby", "~> 0.6.0"       # .Org
  # https://github.com/nricciar/wikicloth
  s.add_dependency "wikicloth", "~> 0.7.1"      # WikiMedia
  # https://github.com/larsch/creole
  s.add_dependency "creole", "~> 0.4.2"         # Creole

  # s.add_runtime_dependency "rest-client"
end
