# Minitest::Profile

Outputs a list of your 10 slowest tests at the end of a test run

## Installation

Add this line to your application's Gemfile:

    gem 'minitest-profile'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-profile

Then add this line to your application's test_helper/spec_helper:

    require 'minitest/profile'

## Usage

Use the `--profile` flag to invoke the plugin.

Direct invocation:

    `ruby test_thing.rb --profile`

Via rake test runner:

    `TESTOPTS='--profile' rake test`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

