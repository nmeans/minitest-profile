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
      puts "Your 10 Slowest Tests"
      puts "=" * 80
      puts
      sorted_results[0,10].each do |time, test_name|
        puts "#{sprintf("%7.4f",time).truncate(2)} s - #{test_name}"
      end

      puts
    end

    def sorted_results
      results.sort { |a, b| b[0] <=> a[0] }
    end
  end
end
