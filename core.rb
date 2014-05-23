require 'nokogiri'
require 'open-uri'
### Dear teammates, make sure to update your ruby version to be compatible with above : )

class WebsiteFetcher
	def self.get_console_input(user_url)
		html_string = user_url.join(" | ")
		uri_string = html_string.slice(URI.regexp)
		p uri_string
		uri = URI.new(uri_string)
		p uri.to_s
		uri.to_s

	end

	def self.send_to_html_parser
		HTMLParser.kick_to_nokogiri(univ_record_locator)
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
		keys = [:link, :image, :paragraph, :comment, :list, :list_item, :table_count]
		keys.each do |key|
			{key => }
		end
		# returns a hash
		# key: value, element_count: integer
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
