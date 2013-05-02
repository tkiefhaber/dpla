require 'dpla/configuration'

class Dpla::Configuration::Item
	
	attr_accessor :keyword

	def initialize(options)
		self.keyword = options["keyword"]
	end

	def by_keyword
		uri = URI("#{::Dpla::Configuration::BASE_URI}/items?q=#{keyword}&api_key=#{Dpla::Configuration.api_key}")
		JSON.load(Net::HTTP.get(uri))
	end

end