require 'minitest'

module Minitest

  def self.plugin_profile_options(opts, options)
    opts.on("--profile", "Display list of slowest tests") do |p|
      options[:profile] = true
    end
  end

  def self.plugin_profile_init(options)
    self.reporter << ProfileReporter.new(options) if options[:profile]
  end

  class ProfileReporter < AbstractReporter
    VERSION = "0.0.2"

    attr_accessor :io, :results

    def initialize(options)
      self.io = options[:io]
      self.results = []
    end

    def record(result)
      results << [result.time, result.location]
    end

    def report
      return unless passed?
      puts
      puts "=" * 80
      puts "Your 10 Slowest Tests                    Average for #{sorted_results.length} tests is #{sprintf("%7.4f", average_time * 1000)}ms"
      puts "=" * 80
      puts
      sorted_results[0,10].each do |time, test_name|
        puts "#{sprintf("%7.4f",time)}ms - #{test_name}"
      end

      puts
    end

    def sorted_results
      @r ||= results.sort { |a, b| b[0] <=> a[0] } end

    def average_time
      sorted_results.map{|t,_| t}.reduce(0, :+) / sorted_results.length
    end
  end
end
