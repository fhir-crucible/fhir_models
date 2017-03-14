require 'simplecov'
SimpleCov.start

require 'objspace'
require 'nokogiri/diff'
require 'test/unit'
require 'pry'

require 'fhir_models'
FHIR.logger.level = Logger::INFO

def check_memory
  memory = Hash.new(0)
  ObjectSpace.each_object(FHIR::Model) {|x| memory[x.class.to_s] += 1}
  memory
end

GCDELAY = ENV['GCDELAY'] || 0.1

def wait_for_gc
  # The Ruby garbage collector is asynchronous and has no callback features,
  # so you don't know when it is finished. We'll call it twice with a short sleep
  # in hopes that it is completed.
  count = GC.count
  while(GC.count <= count+1) do
    ObjectSpace.garbage_collect
    sleep GCDELAY
  end
end