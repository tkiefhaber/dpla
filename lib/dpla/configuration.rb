require 'net/http'
require 'json'
require 'ostruct'

module Dpla
	module Configuration

		BASE_URI = "http://api.dp.la/v2"

		def self.api_key
			@api_key
		end

		def self.api_key=(api_key)
			@api_key = api_key
		end

	end
end