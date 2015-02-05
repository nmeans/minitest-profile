require 'minitest/autorun'
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'minitest/profile'

describe 'a random smattering of tests' do
  50.times do |i|
    it "will take #{i/1000.0}ms" do
      sleep(i/1000.0)
      assert true
    end
  end
end
