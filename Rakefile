require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
  #t.rspec_opts = '-f html -o server_spec.html'
  t.rspec_opts = '-f d'
end

task :default => :spec
