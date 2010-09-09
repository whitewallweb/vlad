# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{vlad}
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Davis", "Eric Hodel", "Wilson Bilkovich"]
  s.date = %q{2010-09-09}
  s.description = %q{Vlad the Deployer is pragmatic application deployment automation,
without mercy. Much like Capistrano, but with 1/10th the
complexity. Vlad integrates seamlessly with Rake, and uses familiar
and standard tools like ssh and rsync.

Impale your application on the heartless spike of the Deployer.}
  s.email = ["ryand-ruby@zenspider.com", "drbrain@segment7.net", "wilson@supremetyrant.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "considerations.txt", "doco/deploying-merb-with-vlad.txt", "doco/deploying-sinatra-with-vlad.txt", "doco/faq.txt", "doco/getting_started.txt", "doco/migration.txt", "doco/perforce.txt", "doco/variables.txt"]
  s.files = [".autotest", "History.txt", "Manifest.txt", "README.txt", "Rakefile", "considerations.txt", "doco/deploying-merb-with-vlad.txt", "doco/deploying-sinatra-with-vlad.txt", "doco/faq.txt", "doco/getting_started.txt", "doco/migration.txt", "doco/perforce.txt", "doco/variables.txt", "lib/vlad.rb", "lib/vlad/apache.rb", "lib/vlad/core.rb", "lib/vlad/maintenance.rb", "lib/vlad/passenger.rb", "lib/vlad/rails.rb", "lib/vlad/subversion.rb", "test/test_vlad.rb", "test/test_vlad_subversion.rb", "vladdemo.sh"]
  s.homepage = %q{http://rubyhitsquad.com/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{hitsquad}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Vlad the Deployer is pragmatic application deployment automation, without mercy}
  s.test_files = ["test/test_vlad_subversion.rb", "test/test_vlad.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, ["~> 0.8.0"])
      s.add_runtime_dependency(%q<rake-remote_task>, ["~> 2.0"])
      s.add_runtime_dependency(%q<open4>, ["~> 0.9.0"])
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.2"])
    else
      s.add_dependency(%q<rake>, ["~> 0.8.0"])
      s.add_dependency(%q<rake-remote_task>, ["~> 2.0"])
      s.add_dependency(%q<open4>, ["~> 0.9.0"])
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<hoe>, [">= 2.6.2"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 0.8.0"])
    s.add_dependency(%q<rake-remote_task>, ["~> 2.0"])
    s.add_dependency(%q<open4>, ["~> 0.9.0"])
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<hoe>, [">= 2.6.2"])
  end
end

