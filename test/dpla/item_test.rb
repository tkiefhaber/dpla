require 'dpla/configuration'
require 'dpla/item'
require 'helper'

class TestItem < MiniTest::Unit::TestCase
	['keyword', 'keywords'].each do |attr|
		define_method "test_#{attr}" do
			l = Dpla::Item.new(attr => "foo")
      assert_equal "foo", l.send(:options[attr])
		end
	end
end