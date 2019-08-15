require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'pry'

Dir['lib/fhir_models/tasks/**/*.rake'].each do |file|
  load file
end

desc 'Run minitest tests'
Rake::TestTask.new(:minitest) do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = true
  t.warning = false
end

desc 'Run all tests'
task test: %i[minitest spec]

RSpec::Core::RakeTask.new

desc 'Run rubocop'
task :rubocop do
  RuboCop::RakeTask.new
end

task default: %i[rubocop test]
