require 'nokogiri'
require 'open-uri'
### Dear teammates, make sure to update your ruby version to be compatible with above : )

class WebsiteFetcher
	def self.get_console_input()
		# verify well formed, raise if not
	end

	def self.send_to_html_parser
		HTMLParser.kick_to_nokogiri(univ_record_locator)
	end
end

class HTMLParser
	def kick_to_nokogiri
		# return fat_blob -> is a file (filename?)
		# Nokogiri::HTML::Document?
		# or just access from the web?
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
	def console_output
	end

	def js_spit_friendly
		raise NoMethodError "not implemented in release 0"
	end
end