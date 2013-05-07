require 'dpla/configuration'

class Dpla::Collection
	
	attr_reader :options

	def initialize(options)
		@options = options
	end

	def by_keyword
		keyword = options[:keyword]
		uri = URI("#{::Dpla::Configuration::BASE_URI}/collections?q=#{keyword}&api_key=#{Dpla::Configuration.api_key}")
		JSON.load(Net::HTTP.get(uri))
	end

	def by_keywords
		keywords = options[:keywords].join('+AND+')
		uri = URI("#{::Dpla::Configuration::BASE_URI}/collections?q=#{keywords}&api_key=#{Dpla::Configuration.api_key}")
		JSON.load(Net::HTTP.get(uri))
	end

end