require 'nokogiri'
require 'open-uri'
### Dear teammates, make sure to update your ruby version to be compatible with above : )

class WebsiteFetcher
	def self.get_console_input(user_url)
		raise ArgumentError, "please put a URL together with the command to run the program" if user_url==[]
		consolidated_input = user_url.join(" | ")
		p consolidated_input
		uri_strings = URI.extract(consolidated_input, ['HTTP','HTTPS'])    #raise ArgumentError, 'please put in a well formed URL'
		p uri_strings
		raise ArgumentError, 'please only provide one URL' if uri_strings.length > 1
		p uri_strings[0]
		@universal_record_locator = uri_strings[0]
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


	def count_tags
		json_hash_output = {}
		json_hash_output[:link] = link_count
		json_hash_output[:image] = image_count
		json_hash_output[:paragraph] = paragraph_count
		json_hash_output[:header] = header_count
		json_hash_output[:comment] = comment_count
		json_hash_output[:list] = list_count
		json_hash_output[:listitem] = list_item_count
		json_hash_output[:table] = table_count
		json_hash_output
	end
		# returns a hash
		# key: value, element_count: integer


end

class Display
	def self.console_output
	end

	def self.js_spit_friendly
		raise NoMethodError "not implemented in release 0"
	end
end

WebsiteFetcher.get_console_input($*)

#####################
##Testing############
#####################

# test page
page = Nokogiri::HTML(open('http://www.robotstxt.org'))
data = FrequencyAnalyzer.new(page)

def assert
	raise 'assertion failed' unless yield
end

# assert {WebsiteFetcher.get_console_input(['purple busses','www.yahoo.com', 'marissa mayer']) == 'www.yahoo.com'}
# assert {WebsiteFetcher.get_console_input(['http://www.yahoo.com']) == 'http://www.yahoo.com'}
# assert {WebsiteFetcher.get_console_input(['www.yahoo.com']) == 'www.yahoo.com'}

# TESTING FrequencyAnalyzer
assert {(data.link_count.is_a? Integer) == true}
assert {(data.image_count.is_a? Integer) == true }
assert {(data.paragraph_count.is_a? Integer) == true }
assert {(data.header_count.is_a? Integer) == true }
assert {(data.comment_count.is_a? Integer) == true }
assert {(data.list_count.is_a? Integer) == true }
assert {(data.list_item_count.is_a? Integer) == true }
assert {(data.table_count.is_a? Integer) == true }
assert {(data.count_tags.is_a? Hash) == true }

p data.count_tags