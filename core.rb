require 'nokogiri'
require 'open-uri'
### Dear teammates, make sure to update your ruby version to be compatible with above : )

class WebsiteFetcher
	def self.get_console_input(user_url)
		raise ArgumentError, "please put a URL together with the command to run the program" if user_url==[]
		consolidated_input = user_url.join(" | ")
		uri_string = consolidated_input.slice(URI.regexp(['http','https']))
		p uri_string
		uri = URI(uri_string)
		@universal_record_locator = uri.to_s
	end

	def self.send_to_html_parser
		HTMLParser.kick_to_nokogiri(@universal_record_locator)
	end
end

class HTMLParser
	def self.kick_to_nokogiri
		# return fat_blob -> is a file (filename?)
		# Nokogiri::HTML::Document?
		# or just access from the web?
		# verify nokogiri success
	end

	def self.send_to_CSS_selector
		#return stripped sections
	end
end

class FrequencyAnalyzer
	def initialize_containers
		# some kind of storage for data
		# list of all tags

			#LINKS
			#<a> (link)

			#IMAGES
			#<img>

			#WORDS
			#<p>
			#<h1>
			# <h2>
			# <h3>
			# <h4>

			#COMMENTS


			#LISTS
			#<ul>
			#<li>

			#DATA
			#<table>


	end

	def count_tags
		# returns collection of counts
	end
end

class Display
	def self.console_output
	end

	def self.js_spit_friendly
		raise NoMethodError "not implemented in release 0"
	end
end

WebsiteFetcher.get_console_input($*)

def assert
	raise 'assertion failed' unless yield
end

assert {WebsiteFetcher.get_console_input(['www.yahoo.com']) == 'www.yahoo.com'}
assert {WebsiteFetcher.get_console_input(['purple busses','www.yahoo.com', 'marissa mayer']) == 'www.yahoo.com'}
assert {WebsiteFetcher.get_console_input(['http://www.yahoo.com']) == 'http://www.yahoo.com'}
