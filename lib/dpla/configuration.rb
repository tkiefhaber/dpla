module Dpla
	module Configuration
		
		DEFAULT_API_KEY = nil

		def self.extended(base)
			base.reset
		end

		def reset
			self.api_key = DEFAULT_API_KEY
		end

	end
end