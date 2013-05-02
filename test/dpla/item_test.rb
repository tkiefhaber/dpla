require 'dpla/configuration'
require 'dpla/item'
require 'helper'

class TestItem < MiniTest::Unit::TestCase
	['keyword'].each do |attr|
		define_method "test_#{attr}" do
			l = Dpla::Configuration::Item.new(attr => "foo")
      assert_equal "foo", l.send(attr)
		end
	end
end