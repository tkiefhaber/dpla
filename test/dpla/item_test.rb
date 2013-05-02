require 'dpla/configuration'

class TestItem < MiniTest::Unit::TestCase
	['item'].each do |attr|
		define_method "test_#{attr}" do
			l = Dpla::Configuration::Item.new(attr => "foo")
      assert_equal "foo", l.send(attr)
		end
	end
end