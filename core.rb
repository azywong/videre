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
			#<a> (link)
			#<br>
			#<center>
			#<div>
			#<em>
			#<head>
			#<h1><h2><...>
			#<i> italics
			#<img>
			#<p>
			#<span>
			#<strong>
			#<table>
			#<ul><li>
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