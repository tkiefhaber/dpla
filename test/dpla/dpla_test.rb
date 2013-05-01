require 'helper'

describe Dpla do
	it 'should have a version' do
		Dpla::VERSION.wont_be_nil
	end
end

describe 'configuration' do

	describe '.api_key' do
 		it 'should return default key' do
 			Dpla.api_key.must_equal Dpla::Configuration::DEFAULT_API_KEY
 		end
 	end

end