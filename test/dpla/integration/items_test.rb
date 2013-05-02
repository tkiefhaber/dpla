require 'dpla/configuration'
require 'dpla/item'
require 'webmock/minitest'

class TestIntegrationItem < MiniTest::Unit::TestCase
	def setup
		Dpla::Configuration.api_key = "supercoolapikey"
	end

	def test_items_by_keyword
		# response = 'poop'
		# stub_request(:get, 'http://api.dp.la/v2/items?q=cat&api_key=supercoolapikey').
		# 	to_return(:status => 200, :body => response)
		# id = 'ff13fd51e7f2d38ef3fab8888be38bba'
		# options = {'keyword' => 'cat'}
		# item = Dpla::Configuration::Item.new(options).by_keyword
		# assert_equal id, item
	end
end