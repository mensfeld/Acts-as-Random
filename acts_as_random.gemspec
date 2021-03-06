# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_random}
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Maciej Mensfeld"]
  s.cert_chain = ["/home/mencio/.cert_keys/gem-public_cert.pem"]
  s.date = %q{2011-04-23}
  s.description = %q{Gem allowing ActiveRecord models to have randomly generated primary keys - not autoincremented}
  s.email = %q{maciej@mensfeld.pl}
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "README.md", "lib/acts_as_random.rb"]
  s.files = ["CHANGELOG.rdoc", "Gemfile", "MIT-LICENSE", "Manifest", "README.md", "Rakefile", "init.rb", "lib/acts_as_random.rb", "spec/acts_as_random_spec.rb", "spec/spec_helper.rb", "acts_as_random.gemspec"]
  s.homepage = %q{https://github.com/mensfeld/Acts-as-Sweepable}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Acts_as_random", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{acts_as_random}
  s.rubygems_version = %q{1.5.2}
  s.signing_key = %q{/home/mencio/.cert_keys/gem-private_key.pem}
  s.summary = %q{Gem allowing ActiveRecord models to have randomly generated primary keys - not autoincremented}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_development_dependency(%q<active_record>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_dependency(%q<active_record>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
    s.add_dependency(%q<active_record>, [">= 0"])
  end
end
