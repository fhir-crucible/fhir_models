require 'simplecov'
SimpleCov.command_name 'Minitest Tests'
require 'objspace'
require 'nokogiri/diff'
require 'test/unit'
require 'pry'

require 'fhir_models'
FHIR.logger.level = Logger::INFO

PRIMITIVE_EXTENSIONS = [
  'activitydefinition-administer-zika-virus-exposure-assessment',
  'activitydefinition-example',
  'activitydefinition-order-serum-dengue-virus-igm',
  'activitydefinition-order-serum-zika-dengue-virus-igm',
  'activitydefinition-predecessor-example',
  'activitydefinition-provide-mosquito-prevention-advice',
  'activitydefinition-servicerequest-example',
  'plandefinition-example-cardiology-os',
  'plandefinition-example'
]
SLOW_FIXTURES = [
  'valueset-ucum-common',
  'capabilitystatement-base',
  'conceptmaps'
]

TESTMEMORY = (ENV['TESTMEMORY'] || 0).to_i
puts "***** TESTMEMORY: #{TESTMEMORY} *****"
GCDELAY = (ENV['GCDELAY'] || 0.1).to_f
puts "***** GCDELAY: #{GCDELAY} *****"

def check_memory
  memory = Hash.new(0)
  return memory if TESTMEMORY==0
  ObjectSpace.each_object(FHIR::Model) {|x| memory[x.class.to_s] += 1}
  memory
end

def wait_for_gc
  return if TESTMEMORY==0
  # The Ruby garbage collector is asynchronous and has no callback features,
  # so you don't know when it is finished. We'll call it twice with a short sleep
  # in hopes that it is completed.
  count = GC.count
  while(GC.count <= count+1) do
    ObjectSpace.garbage_collect
    sleep GCDELAY
  end
end

def assert_memory(before,after)
  return if TESTMEMORY==0
  unless after.empty?
    puts "BEFORE GC: #{before}"
    puts "AFTER GC: #{after}"
  end
  assert after.empty?, 'Garbage collection missed FHIR Models.'
end
