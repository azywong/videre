class WebsiteFetcher
	def get_console_input()
		# verify well formed, raise if not
	end

	def send_to_html_parser
	end
end

class HTMLParser
	def kick_to_nokogiri
		#return fat_blob -> is a file (filename?)
		# verify nokogiri success
	end

	def send_to_CSS_selector
		#return stripped sections
	end
end

class Frequency Analyzer
	def initialize_containers
		# some kind of storage for data
		# list of all tags
	end
	
	def count_tags
		# returns collection of counts
	end
end

class Display
	def console_output
	end

	def js_spit_friendly
		# not implemented in release 0
	end
end