require 'dpla/configuration'

class Dpla::Configuration::Item
	
	attr_accessor :keyword

	def initialize(keyword)
		self.keyword = keyword
	end

	def self.by_keyword
		uri = URI("#{Dpla::Configuration::BASE_API}/items?q=#{keyword}&api_key#{Dpla::Configuration.api_key}")
	end

end