# Minitest::Profile

Outputs a list of your 10 slowest tests at the end of a test run:

``` 
% ruby test/test_minitest_profile.rb --profile
run options: --profile --seed 4106

# Running:

..................................................

Finished in 1.352722s, 36.9625 runs/s, 36.9625 assertions/s.

50 runs, 50 assertions, 0 failures, 0 errors, 0 skips

================================================================================
Your 10 Slowest Tests
================================================================================

 0.0525ms - a random smattering of tests#test_0050_will take 0.049ms
 0.0507ms - a random smattering of tests#test_0047_will take 0.046ms
 0.0503ms - a random smattering of tests#test_0049_will take 0.048ms
 0.0489ms - a random smattering of tests#test_0048_will take 0.047ms
 0.0486ms - a random smattering of tests#test_0046_will take 0.045ms
 0.0480ms - a random smattering of tests#test_0045_will take 0.044ms
 0.0474ms - a random smattering of tests#test_0044_will take 0.043ms
 0.0464ms - a random smattering of tests#test_0043_will take 0.042ms
 0.0430ms - a random smattering of tests#test_0042_will take 0.041ms
 0.0425ms - a random smattering of tests#test_0041_will take 0.04ms

```

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

