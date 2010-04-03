# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{yard-dm}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Postmodern"]
  s.date = %q{2010-04-02}
  s.description = %q{Once yard-dm is installed, YARD will automatically load the plugin when ever the `yardoc` utility is ran on a project.}
  s.email = %q{postmodern.mod3@gmail.com}
  s.extra_rdoc_files = [
    "ChangeLog.md",
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".gitignore",
    ".specopts",
    ".yardopts",
    "ChangeLog.md",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/yard-dm.rb",
    "lib/yard-dm/belongs_to_handler.rb",
    "lib/yard-dm/extensions.rb",
    "lib/yard-dm/has_handler.rb",
    "lib/yard-dm/legacy/belongs_to_handler.rb",
    "lib/yard-dm/legacy/has_handler.rb",
    "lib/yard-dm/legacy/property_handler.rb",
    "lib/yard-dm/property_handler.rb",
    "spec/belongs_to_handler_spec.rb",
    "spec/has_handler_spec.rb",
    "spec/helpers/examples.rb",
    "spec/helpers/examples/has_n.rb.txt",
    "spec/helpers/examples/has_one.rb.txt",
    "spec/helpers/examples/has_one_to_n.rb.txt",
    "spec/helpers/examples/has_zero.rb.txt",
    "spec/helpers/examples/has_zero_to_n.rb.txt",
    "spec/helpers/examples/invalid_belongs_to.rb.txt",
    "spec/helpers/examples/invalid_has.rb.txt",
    "spec/helpers/examples/invalid_properties.rb.txt",
    "spec/helpers/examples/simple_belongs_to.rb.txt",
    "spec/helpers/examples/simple_properties.rb.txt",
    "spec/property_handler_spec.rb",
    "spec/spec_helper.rb",
    "tasks/yard.rb",
    "yard-dm.gemspec"
  ]
  s.has_rdoc = %q{yard}
  s.homepage = %q{http://github.com/postmodern/yard-dm}
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A YARD plugin for parsing DataMapper model syntax.}
  s.test_files = [
    "spec/helpers/examples.rb",
    "spec/spec_helper.rb",
    "spec/belongs_to_handler_spec.rb",
    "spec/property_handler_spec.rb",
    "spec/has_handler_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_development_dependency(%q<yard>, [">= 0.4.0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_dependency(%q<yard>, [">= 0.4.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
    s.add_dependency(%q<yard>, [">= 0.4.0"])
  end
end

