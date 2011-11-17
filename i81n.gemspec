# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "i81n"
  s.version     = "0.2.2"
  s.authors     = ["jugyo"]
  s.email       = ["jugyo.org@gmail.com"]
  s.homepage    = "https://github.com/jugyo/i81n"
  s.summary     = %Q{I81n is 'Internationalizaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaation'.}
  s.description = %Q{I81n aims that make I18n easy to use.}

  s.rubyforge_project = "i81n"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "i18n"
  s.add_development_dependency "shoulda"
  s.add_development_dependency "bundler"
  s.add_development_dependency "jeweler"
end
