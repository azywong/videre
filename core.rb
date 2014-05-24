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


class FrequencyAnalyzer
	def initialize(page)
		@page = page
	end

	def link_count
		@page.css("a").length
	end

	def image_count
		@page.css("img").length
	end

	def paragraph_count
		@page.css("p").length
	end

	def header_count
		h1 = @page.css("h1").length
		h2 = @page.css("h2").length
		h3 = @page.css("h3").length
		h4 = @page.css("h4").length
		h1 + h2 + h3 + h4
	end

	def comment_count
		@page.css(".comment").length
	end

	def list_count
		@page.css("ul").length
	end

	def list_item_count
		@page.css("li").length
	end

	def table_count
		@page.css("table").length
	end


	end

	def count_tags
		data.link_count
		data.image_count
		data.paragraph_count
		data.header_count
		data.comment_count
		data.list_count
		data.list_item_count
		data.table_count
	end
		# returns a hash
		# key: value, element_count: integer
	end
end

# class Display
# 	def self.console_output
# 	end

# 	def self.js_spit_friendly
# 		raise NoMethodError "not implemented in release 0"
# 	end
# end

WebsiteFetcher.get_console_input($*)

#####################
##Testing############
#####################

# test page
# page = Nokogiri::HTML(open('http://www.huffingtonpost.com'))

data = FrequencyAnalyzer.new(page)
p data.link_count
p data.image_count
p data.paragraph_count
p data.header_count
p data.comment_count
p data.list_count
p data.list_item_count
p data.table_count

def assert
	raise 'assertion failed' unless yield
end

assert {WebsiteFetcher.get_console_input(['www.yahoo.com']) == 'www.yahoo.com'}
assert {WebsiteFetcher.get_console_input(['purple busses','www.yahoo.com', 'marissa mayer']) == 'www.yahoo.com'}
assert {WebsiteFetcher.get_console_input(['http://www.yahoo.com']) == 'http://www.yahoo.com'}
