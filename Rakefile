require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "watirloo"
    gem.summary = %Q{small Watir framework based on semantic page object adapters for DOM elements}
    gem.description = %Q{Helps you write tests in the language of the customer's domain}
    gem.email = "marekj.com@gmail.com"
    gem.homepage = "http://github.com/marekj/watirloo"
    gem.authors = ["marekj"]
    gem.add_dependency 'watir', '>=1.6.2'
    gem.add_development_dependency 'rspec', '>= 1.2.7'
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end


require 'spec/rake/spectask'
desc "spec with ie browser"
Spec::Rake::SpecTask.new do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/*_spec.rb']
  spec.spec_files.exclude('spec/reflector*') #TODO fix reflector feature
  spec.fail_on_error = false
  spec.spec_opts = [
    "--color",
    "--require spec/spec_helper_runner.rb", # slow execution expected. closes all browsers on desktop before :all
    "--format specdoc",
    "--format specdoc:spec/spec_results.txt",
    "--format failing_examples:spec/spec_results_failed.txt",
    "--format html:spec/spec_results.html",
    #"--diff",
    "--loadby mtime",
    #"--dry-run", # will overwrite any previous spec_results
    #"--generate-options spec/spec.opts",
  ]
end

# FIXME fix the spec FileList to only include those that execut for firefox. use taglog lib
desc "spec with ff browser"
Spec::Rake::SpecTask.new(:spec_ff) do |t|
  t.spec_files = FileList['spec/*_spec.rb']
  t.spec_opts = [
    "--color",
    "--require spec/spec_helper_ff.rb",
    "--format specdoc",
    "--format specdoc:spec/firewatir/spec_results.txt",
    "--format failing_examples:spec/firewatir/spec_results_failed.txt",
    "--format html:spec/firewatir/spec_results.html",
    "--loadby mtime" ]
end

#task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "watirloo #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end